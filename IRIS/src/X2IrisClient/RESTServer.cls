/*
  Copyrights@ 2025 RocketCitySoft LLC.
  https://www.rocketcitysoft.com
  Author: Dmitry Konnov konnov72@gmail.com
  History:
  Nov 2024.
*/

Include X2AppErrors

Class X2IrisClient.RESTServer Extends %CSP.REST
{

XData UrlMap
{
<Routes>
    <Route Url="/query" Method="POST" Call="RunSQL"/>            
    <Route Url="/procedure" Method="POST" Call="RunClassMethod"/>                         
    <Route Url="/post" Method="POST" Call="PostObject"/>  
    <Route Url="/delete" Method="POST" Call="DeleteObject"/> 
    <Route Url="/list/:table/:field" Method="GET" Call="GetList"/>     
</Routes>
}

ClassMethod ResolveDuplicateNames(cols As %DynamicArray)
{
    // use dynamic object as a dictionary
    set seen = {}  // %DynamicObject

    for i=0:1:cols.%Size()-1 {
        set col = cols.%Get(i)
        set name = col.Name

        // first time
        if 'seen.%IsDefined(name) {
            do seen.%Set(name,1)
            continue
        }

        // duplicate
        set count = seen.%Get(name) + 1
        do seen.%Set(name,count)

        set col.Name = name _ count
    }
}

ClassMethod SortColumns(cols As %DynamicArray) As %Status
{

    $$$CheckError($iso(cols) = 1, "cols is nil")
    
    // Temporary arrays
    set fixed = ##class(%DynamicArray).%New()
    set var   = ##class(%DynamicArray).%New()

    // Split into fixed-length and variable-length
    for i=0:1:cols.%Size()-1 {
        set col = cols.%Get(i)
        set dt  = col.DataType

        if (dt="Memo")!(dt="Blob")!(dt="WideMemo") {
            do var.%Push(col)
        } else {
            do fixed.%Push(col)
        }
    }
    
      // Clear the original array (no %Clear(), so remove items)
    while cols.%Size() {
        do cols.%Remove(0)
    }

    for i=0:1:fixed.%Size()-1  do cols.%Push(fixed.%Get(i))
    for i=0:1:var.%Size()-1    do cols.%Push(var.%Get(i))

    quit $$$OK 
    //quit  ; DO NOT return cols
}

ClassMethod GetColumnSize(cols As %DynamicArray, Name As %String) As %Integer
{
    // Validate input
    If '$IsObject(cols)  Quit 0
    If cols.%Size()=0    Quit 0
    If Name=""           Quit 0

    // Iterate through all column objects
    For i=0:1:cols.%Size()-1 {
        Set col = cols.%Get(i)
        If '$IsObject(col) Continue

        // Match by Name
        If col.%IsDefined("Name"), (col.%Get("Name") = Name) {

            // If Size exists → return it
            If col.%IsDefined("Size") {
                Return col.%Get("Size")
            }

            // Otherwise return 0
            Return 0
        }
    }

    // Column not found
    Quit 0
}

ClassMethod Truncate(value As %String, max As %Integer) As %String
{
    If max>0, $Length(value) > max {
        Quit $Extract(value, 1, max)
    }
    Quit value
}

/*
ClassMethod ObjectExists(metaobjects As %Collection.ListOfObj, ColumnName As %String) As %Boolean
{
    If '$IsObject(metaobjects) Quit 0

    Set count = metaobjects.Count()
    For i = 1:1:count {
        Set obj = metaobjects.GetAt(i)
        If '$IsObject(obj) Continue
        
        If $ZConvert(obj.columnName, "U") = $ZConvert(ColumnName, "U") {
            return 1
        }
    }

    Quit 0
}
*/
ClassMethod RunSQL() As %Status
{
    
    $$$CheckError($iso(%request.Content) = 1, "%request.Content is empty")   
    Set body = %request.Content.Read() 
      
    set input = {}.%FromJSON(body)     
    $$$CheckError(input.%IsDefined("sql"), "sql is not Assigned")
    $$$CheckError(input.%Get("sql") '= "", "sql is Empty")

    $$$CheckError(input.%IsDefined("namespace"), "namespace is not Assigned")
    $$$CheckError(input.%Get("namespace") '= "", "namespace is Empty")
    $$$CheckError(##class(%SYS.Namespace).Exists(input.namespace) = 1, "namespace "_input.namespace_" does not exists")
    Zn input.namespace

    Set tSQL = input.sql
      
    //Zn "CLIENTAPP"   
    //Set tSQL = "SELECT ID, Name, Spouse FROM ONAPI.Person"
    
    SET stmt = ##class(%SQL.Statement).%New()    
    //Set tSQL = "CALL X2IrisClient.SP_ClassTree('%SYS')"
    SET sc = stmt.%Prepare(tSQL)
    IF $$$ISERR(sc) {
        DO $SYSTEM.Status.DisplayError(sc)
        QUIT
    }

    SET rs = stmt.%Execute()
    Set rows = []
   
    // Get metadata once
    Set meta = rs.%GetMetadata()
    Set colCount = meta.columns.Count()
    //Set metaobjects = meta.objects

   // Create array to hold column definitions
    set cols = ##class(%DynamicArray).%New()    
    set col = ##class(%DynamicObject).%New()
    For i = 0:1:colCount-1 {
      Set column = meta.columns.GetNext(i)
      
      if column.colName = "ID" {          
          set col.class = "Column"
          set col.Name = column.colName
          set col.SourceName = column.colName
          set col.SourceID = 1
          set col.DataType = "Int32"
          set col.Searchable = "BooleanTrue"
          set col.AllowNull = "BooleanTrue"
          set col.Base = "BooleanTrue"
          set col.OAllowNull = "BooleanTrue"
          set col.OInUpdate = "BooleanTrue"
          set col.OInWhere = "BooleanTrue"
          set col.OriginColName = column.colName
          do cols.%Push(col)                
          continue
      }

      
      //$$$CheckError($iso(propDef)=1, "propDef = nil for Property """_column.colName_""" not found in class""")
           
      set col = ##class(%DynamicObject).%New()
      set col.class = "Column"
      set col.Name = column.colName
      set col.SourceName = column.colName
      set col.SourceID = i + 1     
      set col.DataType = "AnsiString"
      //Do not declare col.Size yet - will be set based on datatype
      //declaring col.Size here does lead to incorrect size for Memo/Blob fields
      //set col.Size = 50 // default size
      set MaxLen = ""
      set prec = ""
      set scale = ""
      set IrisType = "%Library.String"
      if $iso(column.property) {
        set IrisType = column.property.Type
        if $property(column.property, "Parameters") '= "" {
           set MaxLen = column.property.Parameters.GetAt("MAXLEN")
        }     
        if (IrisType = "%Library.Decimal") || (IrisType = "%Library.Numeric")  { 
          // precision = total digits
          // scale = digits after decimal
          set prec = column.property.Precision
          set scale = column.property.Scale
          set col.Size = prec + (scale>0) + 1
          set col.DataType = "BCD"
          if col.IrisType = "%Library.Numeric" {
              set col.DataType = "Number"
          }
        }          
      }
           
     
      // Map IRIS datatype to FireDAC datatype        
      
      // 1. STRING TYPES
      if IrisType = "%Library.String" {            
          set col.DataType = "AnsiString"                              
          if MaxLen '= "" {
             set col.Size = +MaxLen // maxLength + 0 to convert to number
          }
          
      }
      // 2. INTEGER TYPES
      elseif IrisType = "%Library.Integer" {
          set col.DataType = "Int32" 
          // default 32-bit integer range
          set col.Size = 11  // "-2147483648" = 11 chars
      }
      elseif IrisType = "%Library.BigInt" {
          set col.DataType = "LargeInt"
          // 64-bit integer range
          set col.Size = 20  // "-9223372036854775808"
      }
      elseif IrisType = "%Library.SmallInt" {
          set col.DataType = "SmallInt"
          set col.Size = 6   // "-32768"
      }
      elseif IrisType = "%Library.TinyInt" {
          set col.DataType = "ShortInt"
          set col.Size = 4   // "-128"
      }
      // 3. DECIMAL / NUMERIC
      /*
      elseif (IrisType = "%Library.Decimal") || (IrisType = "%Library.Numeric") {
          // size = digits + decimal point + optional minus sign
          set col.Size = prec + (scale>0) + 1
          set col.DataType = "BCD"
          if col.IrisType = "%Library.Numeric" {
              set col.DataType = "Number"
          }
      }
      */
      elseif IrisType = "%Library.Float" {
          set col.DataType = "Single"
          set col.Size = 24  // approximate size for float representation
      }
      elseif IrisType = "%Library.Double" {
          set col.DataType = "Double"
          set col.Size = 53  // approximate size for double representation
      }
      // DATE
      elseif IrisType = "%Library.Date" {
          set col.DataType = "Date"
          set col.Size = 10  // "YYYY-MM-DD"
      }
      // TIME
      elseif IrisType = "%Time" {
          set col.DataType = "Time"
          set col.Size = 8   // "HH:MM:SS"
      }
      // TIMESTAMP
      elseif IrisType = "%Library.TimeStamp" {
          set col.DataType = "DateTime"
          set col.Size = 26  // "YYYY-MM-DD HH:MM:SS.ssssss"
      }
      // BOOLEAN
      elseif IrisType = "%Library.Boolean" {
          set col.DataType = "Boolean"
          set col.Size = 5   // "false" or "true"
      }
      // BLOB / STREAM      
      elseif IrisType = "%Stream.GlobalBinary" {
          set col.DataType = "Blob"
          $$$CheckError(i '= 0, "Blob column cannot be first column")
      }
      // CLOB
      elseif IrisType = "%Stream.GlobalCharacter" {
          set col.DataType = "WideMemo"
          //Do not declare col.Size  - TWideMemoField will be Empty  
          $$$CheckError(i '= 0, "WideMemo column cannot be first column")
      }
        
     

      //--------- Set other column properties  

      set col.Searchable = "BooleanTrue"
      set col.AllowNull = "BooleanTrue"
      //BlobData must go after AllowNull
      if (col.DataType = "WideMemo") || (col.DataType = "Blob")
      {
        set col.BlobData = "BooleanTrue"
      }
      set col.Base = "BooleanTrue"
      set col.OAllowNull = "BooleanTrue"
      set col.OInUpdate = "BooleanTrue"
      set col.OInWhere = "BooleanTrue"
      set col.OriginColName = col.Name

      // Check if this column is a property reference
      Set IsPropertyReference =  ..IsReferenceProperty(column.property.parent.Name, column.colName)  // ..ObjectExists(metaobjects, column.colName)

      if (IsPropertyReference = 0) && (col.DataType '= "WideMemo") && (col.DataType '= "Blob"){
        set col.SourceSize = col.Size
      }
      if IsPropertyReference {
        set col.DataType = "Int32" 
        set col.Searchable = "BooleanTrue"
        set col.AllowNull = "BooleanTrue"
        set col.Base = "BooleanTrue"
        set col.OAllowNull = "BooleanTrue"
        set col.OInUpdate = "BooleanTrue"
        set col.OInWhere = "BooleanTrue"
        set col.OriginColName = column.colName
      } 
      
      do cols.%Push(col)
  }
    do ..SortColumns(cols)
    //important if there are duplicates in columns
    do ..ResolveDuplicateNames(cols)
    //set validation =  ..ValidateColumnOrder(cols)
    //do CheckError(validation, "INVALID_COLUMN_ORDER")



    set colunms = cols.%ToJSON()
    set colunms = $replace(colunms, """BooleanTrue""", "true")  
    set colunms = $replace(colunms, """BooleanFalse""", "false")  

    set RowID = 0   
    While rs.%Next() {

        set row = ##class(%DynamicObject).%New()
        set row.class = "Row"
        set row.RowID = RowID

        set original = ##class(%DynamicObject).%New()

        // Loop through all columns using metadata
        For i = 0:1:colCount-1 {
            Set id = rs.%GetData(1) // Get ID for WideMemo handling
            Set colName = cols.%Get(i).Name
            // to-do: Get Real colValue based on colName. Becuae if Columns are sorted (..SortColumns(cols)), index i may not match
            Set colValue = rs.%GetData(i + 1)  //Gets value. Index in Resultset is shifted 
            Set colDataType = cols.%Get(i).DataType
            if colDataType = "Date" {    
                Set colValue = +$ZDATE(colValue, 8)  //integer date format YYYYMMDD
            }
            elseif colDataType = "Time" {    
                Set colValue = $ZTIME(colValue, 1)
            }
            elseif colDataType = "AnsiString" {    
                Set ColSize = ..GetColumnSize(cols, colName)
                Set colValue = ..Truncate(colValue, ColSize)
                Set colValue = $REPLACE(colValue, """", """""")                
            }elseif colDataType = "WideMemo" { 
                //X2IrisClient.Forms used as example class with WideMemo property
                //to-do : make it generic for any class with WideMemo/Blob property

                /*
                Set obj = ##class(ONAPI.Employee).%OpenId(id)
                Set stream = $PROPERTY(obj, colName)
                Set text = ""
                While 'stream.AtEnd {
                    Set text = text _ stream.Read()
                }
Set colValue =  $REPLACE(text, """", """""")   
                */
                Set colValue = "Not implemented.To read WideMemo/Blob properties, modify RESTServer.RunSQL method."
            }elseif colDataType = "Boolean" {
                if colValue=1 {
                    set colValue = "BooleanTrue"
                }else {
                    set colValue = "BooleanFalse"
                }
}
            elseif colName = "ID" {
              // ID is always integer
              Set colValue = +colValue
            }            

        
            Do original.%Set(colName, colValue)
        }
        set row.Original = original
        Do rows.%Push(row)
        set RowID = RowID + 1
    }

    set rows = rows.%ToJSON()
    set rows = $replace(rows, """BooleanTrue""", "true")  
    set rows = $replace(rows, """BooleanFalse""", "false")  
    
    Set json = "{"
    Set json = json _ """FDBS"":{"
    Set json = json _ """Version"":16,"
    Set json = json _ """Manager"":{"
    Set json = json _ """UpdatesRegistry"": true,"
    Set json = json _ """TableList"": ["
    Set json = json _ "{"
    Set json = json _ """class"": ""Table"","
    Set json = json _ """Name"": ""MemTable"","    
    Set json = json _ """SourceName"": ""MemTable"","
    Set json = json _ """TabID"": 0,"
    Set json = json _ """EnforceConstraints"": false,"
    Set json = json _ """MinimumCapacity"": 50,"
    Set json = json _ """CheckNotNull"": false,"
    Set json = json _ """ColumnList"": "_colunms
      
    Set json = json _ ","
    Set json = json _ """ConstraintList"": [],"
    Set json = json _ """ViewList"": [],"
    Set json = json _ """RowList"": " _ rows
    Set json = json _ "}"
    Set json = json _ "],"
    Set json = json _ """RelationList"": [],"
    Set json = json _ """UpdatesJournal"":{"
  //  Set json = json _ """SavePoint"": 0,"
    Set json = json _ """Changes"": []"
    Set json = json _ "}"
    Set json = json _ "}"
    Set json = json _ "}"
    Set json = json _ "}"

    write json
    Quit $$$OK
}

ClassMethod RunClassMethod() As %Status
{
    $$$CheckError($iso(%request.Content) = 1, "%request.Content is empty")   
    Set body = %request.Content.Read() 
      
    set input = {}.%FromJSON(body)     
    $$$CheckError(input.%IsDefined("class"), "class is not Assigned")
    $$$CheckError(input.%Get("class") '= "", "class is Empty")
    If $Extract(input.class,1,1)="%" { 
        Quit $$$ERROR($$$AccessDenied) 
    }
    
    $$$CheckError(input.%IsDefined("method"), "method is not Assigned")
    $$$CheckError(input.%Get("method") '= "", "method is Empty")

    //$$$CheckError(input.%IsDefined("namespace"), "namespace is not Assigned")
    //$$$CheckError(input.%Get("namespace") '= "", "namespace is Empty")
    //$$$CheckError(##class(%SYS.Namespace).Exists(input.namespace) = 1, "namespace "_input.namespace_" does not exists")
    
    set argCount = 0
    if input.%IsDefined("args") {
      set argCount = input.args.%Size()
    }
    if argCount = 0 {
        set result = $classmethod(input.class, input.method, input.namespace)
    } elseif argCount = 1 {
        set result = $classmethod(input.class, input.method, input.args.%Get(0))
    } elseif argCount = 2 {
        set result = $classmethod(input.class, input.method, input.args.%Get(0), input.args.%Get(1))
    } elseif argCount = 3 {
        set result = $classmethod(input.class, input.method, input.args.%Get(0), input.args.%Get(1), input.args.%Get(2))
    }
        
    
    write result
    Quit $$$OK
}

ClassMethod RunScript(ns As %String, script As %String) As %String
{
   //Set script = "Set x = 10 For i=1:1:5 { Write !, i, "" -> "", (x+i)} QUIT 0"
   //Set script = "Set a =""Hello"" QUIT a"
    Set ns = ..NormalizeSqlString(ns)
    If ns = "" Quit $$$ERROR($$$GeneralError, "Namespace parameter is empty")    
    zn ns
    // script must be a valid ObjectScript command line
    // that ends with: QUIT <someValue>
    // Execute the script
    Set result = $XECUTE(script_" QUIT """"")
    Quit result
}

ClassMethod NormalizeSqlString(val) As %String
{
    // Normalize NULL → ""
    Set val = $Get(val, "")

    // Convert to plain string
    Set val = $ListToString($ListBuild(val))

    // SQL empty string ('') arrives as $CHAR(0)
    If $ASCII(val)=0 {
        Set val = ""
    }

    // Manual trim (safe inside SQL)
    // Remove leading spaces
    For {
        Quit:val=""
        Quit:$ASCII(val)'=32
        Set val=$Extract(val,2,*)
    }

    // Remove trailing spaces
    For {
        Quit:val=""
        Quit:$ASCII(val,$Length(val))'=32
        Set val=$Extract(val,1,$Length(val)-1)
    }

    Quit val
}

ClassMethod GetClassText(ns As %String, name As %String) As %String
{
    
    // Normalize namespace
    //set ns = $ZConvert($Get(ns, $Namespace), "O")  // "O" = uppercase
    set ns = $ZConvert(ns, "O")
    If ns = "" {
      Quit $$$ERROR($$$GeneralError, "Namespace parameter is empty")
    }

    if ##class(%SYS.Namespace).Exists(ns) = 0 {
      Quit $$$ERROR($$$GeneralError, "namespace "_ns_" does not exists")
    }    

    If $Extract(name,1,1)="%" { 
          Quit $$$ERROR($$$AccessDenied) 
    }

    Set tSC = ##class(%Compiler.UDL.TextServices).GetTextAsString(ns, name, .tClassText, .tDelim)
    if $$$ISERR(tSC) {        
        quit $System.Status.GetErrorText(tSC)
    }
    quit tClassText
}

ClassMethod IsStreamProperty(obj, key) As %Boolean
{
    if '$IsObject(obj) Quit 0
    if key = "" Quit 0
    Try {
        // Get current value
        Set v = $PROPERTY(obj, key)

        // Case 1: already a stream object
        If $IsObject(v) {
            return 1
        }

        // Case 2: NULL stream property → type is still stream
        // Try creating a new stream and assigning it
            Set s = ##class(%String).%New()
            Set $PROPERTY(obj, key) = s

            // If assignment succeeds AND v was empty → it's a stream property
            return 1
    } Catch ex {
        // If assignment fails → not a stream
        return 0
    }
}

ClassMethod IsReferenceProperty(class As %String, propName As %String) As %Boolean
{
    Set id = class_"||"_propName
    Set prop = ##class(%Dictionary.PropertyDefinition).%OpenId(id)
    If prop = "" Quit 0

    Set t = prop.Type
    If t = "" Quit 0

    // If type starts with %, it's a datatype → NOT a reference
    If $Extract(t,1) = "%" Quit 0

    // Otherwise it's a class → reference property
    Quit 1
}

ClassMethod PostObject() As %Status
{
    Set response = {}
    Try{
        
        $$$CheckError($iso(%request.Content) = 1, "%request.Content is empty")   
        Set body = %request.Content.Read()
        Set input = {}.%FromJSON(body)
        
        //Set input = {"class":"X2IrisClient.Security.Permission","operation":"insert","data":{"ID":"","X2Role":"1","RoleName":"","TargetClass":"ONAPI.Person","Action":"READ"}}
        Set className = input.class
        $$$CheckError(className '= "", "class is empty")

        If $Extract(className,1,1)="%" { 
          return $$$ERROR($$$AccessDenied) 
        }

        Set operation = input.operation
        $$$CheckError((operation = "insert") || (operation = "edit") , "Invalid operation: "_operation_" (must be 'insert' or 'update'")
        
        Set data = input.data    
        $$$CheckError($iso(data)=1, "data is nil")
        // Extract ID
        Set id = data.ID

        // Decide INSERT vs UPDATE
        If operation="insert" {
            // INSERT
            Set obj =  $classmethod(className, "%New") 
        }
        ElseIf operation="edit" {
            // UPDATE
            Set obj = $classmethod(className, "%OpenId", id)
            $$$CheckError($IsObject(obj), "Object with ID "_id_" not found")
        }
        
        // Apply properties
        Set iterator = data.%GetIterator()
        While iterator.%GetNext(.key, .value) {
            Continue:key="ID"  // skip ID

            Set prop = ##class(%Dictionary.PropertyDefinition).%OpenId(className_"||"_key)
            If prop = "" Continue  // property does not exist

            If ..IsReferenceProperty(className, key) {
                // Get the declared type of the property

                Set type = prop.Type
                If type = "" Continue // should never happen, but safe
                // Check if type is a class (not a datatype)
                If '##class(%Dictionary.ClassDefinition).%ExistsId(type) Continue
                //Open the referenced object by ID
                
                 //"X2IrisClient.Security.X2Role"
                Set refObj = $classmethod(type, "%OpenId", value)
                Set $PROPERTY(obj, key) = refObj
                Continue
            }

             // Determine property type without %Dictionary            
            // Stream property?
            
            If ..IsStreamProperty(obj, key) {
                Set stream = ##class(%Stream.GlobalCharacter).%New()
                Do stream.Write(value)
                Set $PROPERTY(obj, key) = stream
                Continue
            }
            
            // Normal scalar property
            Set $PROPERTY(obj, key) = value 
        }

        // Save
        Do obj.%Save()

        // Return new ID
        Do response.%Set("Result", obj.%Id())
        write response.%ToJSON()
        return $$$OK
    } Catch ex {
        // Exception handler
        Do response.%Set("Result", -1)
        Do response.%Set("error", ex.DisplayString())
        Write response.%ToJSON()
        return $$$ERROR($System.Status.Error(500,"PostObject failed"))
    }
}

ClassMethod DeleteObject() As %Status
{
    Try {    
        // Validate request body
        $$$CheckError($iso(%request.Content) = 1, "%request.Content is empty")
        Set body = %request.Content.Read()
        Set input = {}.%FromJSON(body)

        // Validate class name
        Set className = input.class
        $$$CheckError(className '= "", "class is empty")
        If $Extract(className,1,1)="%" { 
          return $$$ERROR($$$AccessDenied) 
        }


        // Validate operation
        Set operation = input.operation
        $$$CheckError(operation = "delete", "operation is not 'delete'")

        // Validate ID
        Set ID = input.ID
        $$$CheckError(ID '= "", "ID is empty")
        
        // Prepare JSON response object
        Set response = {}

        // Try to open the object
        Set obj = $classmethod(className, "%OpenId", ID)
        If obj = "" {
            Do response.%Set("Result", 0)
            Do response.%Set("error", "Object not found")
            Write response.%ToJSON()
            return $$$OK
        }

        // Try to delete the object
        Set sc = obj.%DeleteId(ID)
        If $$$ISERR(sc) {
            Do response.%Set("Result", 0)
            Do response.%Set("error", $System.Status.GetErrorText(sc))
            Write response.%ToJSON()
            return sc
        }

        // Success
        Do response.%Set("Result", 1)
        Write response.%ToJSON()
        return $$$OK

    } Catch ex {
        // Exception handler
        Do response.%Set("Result", 0)
        Do response.%Set("error", ex.DisplayString())
        Write response.%ToJSON()
        return $$$ERROR($System.Status.Error(500,"DeleteObject failed"))
    }
}

/*
ClassMethod GetUserClasses(ns As %String = "") As %String
{
    Set (list, class, result) = ""
    
    // Prepare SQL once
    Set sql = "SELECT ShowInMainTree,ID FROM X2IrisClient.Forms WHERE RefClass = ?"
    Set stmt = ##class(%SQL.Statement).%New()
    Set sc = stmt.%Prepare(sql)
    If $$$ISERR(sc) {
        Do $SYSTEM.Status.DisplayError(sc)
        Quit ""
    }

    // Get all classes
    Do ##class(%SYSTEM.OBJ).GetClassList(.list)

    Set class = ""
    For {
        Set class = $Order(list(class))
        Quit:class=""

        // Execute query for this class
        Set rs = stmt.%Execute(class)

        If rs.%Next() {
            If rs.%Get("ShowInMainTree") = 1 {
                // Append to result string
                Set result = result _ class _ ";" _ rs.%Get("ID") _ ";P" _ $Char(10)
            }
        }
    }

    Quit result
}
*/
ClassMethod GetList(table As %String, field As %String) As %Status
{
    zn "CLIENTAPP"
    // Create JSON response object
    Set response = {}
    
    // Build SQL using schema.table
    Set sql = "SELECT " _ field _ " FROM " _table

    // Prepare SQL
    Set stmt = ##class(%SQL.Statement).%New()
    Set sc = stmt.%Prepare(sql)
    If $$$ISERR(sc) {
        Do response.%Set("error", "SQL prepare failed")
        Do response.%Set("sql", sql)
        Set message = $SYSTEM.Status.DisplayError(sc)  
        Do response.%Set("Message", message)
        write response.%ToJSON()
        Quit $$$ERROR($$$GeneralError, "SQL prepare failed")        
    }

    // Execute
    Set rs = stmt.%Execute()
    Set arr = []  // dynamic array

    While rs.%Next() {
        Do arr.%Push(rs.%Get(field))
    }

    // Success
    Do response.%Set("Result", arr)
    Do response.%Set("count", arr.%Size())

    write response.%ToJSON()
    Quit $$$OK
}

}
