<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
</head>
<body>
  <h1><strong>TX2IrisQuery – REST‑Backed TDataSet for InterSystems IRIS</strong></h1>
  <p>
    <code>TX2IrisQuery</code> is a Delphi component that exposes InterSystems IRIS data through a familiar
    <code>TDataSet</code> interface. It allows you to run SQL queries, edit records, insert new objects,
    delete objects, and call IRIS class methods — all through a REST API.
  </p>
  <p>If you already use FireDAC datasets, you’ll feel right at home.</p>

  <h2><strong>Features</strong></h2>
  <ul>
    <li>
      <strong>Drop‑in TDataSet descendant</strong><br />
      Works like any in‑memory FireDAC dataset (<code>TFDMemTable</code>).
    </li>
    <li>
      <strong>Automatic REST integration</strong><br />
      Just assign a <code>TRESTClient</code> and a namespace — the component handles the rest.
    </li>
    <li>
      <strong>Full CRUD support</strong><br />
      <ul>
        <li><strong>SELECT:</strong> loads JSON into dataset</li>
        <li><strong>INSERT:</strong> posts new IRIS object</li>
        <li><strong>EDIT:</strong> sends only changed fields</li>
        <li><strong>DELETE:</strong> removes object on server</li>
      </ul>
    </li>
    <li>
      <strong>Automatic parameter detection</strong><br />
      SQL parameters like <code>:ID</code> or <code>:Name</code> are auto‑created and applied.
    </li>
    <li>
      <strong>Class method execution</strong><br />
      Call any IRIS class method via REST:
      <code>DoClassMethod('My.Class', 'Method', ['param1', 'param2'])</code>
    </li>
    <li>
      <strong>Namespace discovery</strong><br />
      Built‑in script retrieves available IRIS namespaces.
    </li>
    <li>
      <strong>Error handling hooks</strong><br />
      Custom event for HTTP protocol errors.
    </li>
  </ul>

  <h2><strong>Installation</strong></h2>
  <p>Simply add the component source to your Delphi project or package:</p>
  <pre><code>IRIS/src/X2IrisClient/X2IrisQuery.pas</code></pre>
  <p>Register the component in your design‑time package if desired.</p>

  <h2><strong>Getting Started</strong></h2>

  <h3><strong>1. Register default REST client and namespace (optional)</strong></h3>
  <pre><code>RegisterDefaultRestClientAndNamespace(RestClient1, 'USER');</code></pre>

  <h3><strong>2. Drop <code>TX2IrisQuery</code> on a form</strong></h3>
  <pre><code>IrisQuery.RestClient := RestClient1;
IrisQuery.Namespace := 'USER';</code></pre>

  <h3><strong>3. Write SQL</strong></h3>
  <pre><code>IrisQuery.SQL.Text :=
  'SELECT ID, Name, Age, %ClassName As __class FROM Sample.Person';</code></pre>

  <h3><strong>4. Open the dataset</strong></h3>
  <pre><code>IrisQuery.Active := True;</code></pre>

  <p>Now you can bind it to UI controls, navigate, edit, insert, and delete like any dataset.</p>

  <h2><strong>CRUD Behavior</strong></h2>

  <h3><strong>Insert</strong></h3>
  <ul>
    <li>Builds JSON from all fields except empty <code>ID</code></li>
    <li>Sends to <code>/post</code> endpoint</li>
    <li>Receives new ID and updates dataset automatically</li>
  </ul>

  <h3><strong>Edit</strong></h3>
  <ul>
    <li>Only changed fields are sent</li>
    <li>Memo and wide‑memo fields supported</li>
    <li>Blob fields are not supported</li>
  </ul>

  <h3><strong>Delete</strong></h3>
  <ul>
    <li>Sends delete request before removing row locally</li>
  </ul>

  <h2><strong>Calling IRIS Class Methods</strong></h2>
  <pre><code>var result := IrisQuery.DoClassMethod(
  'MyApp.Utils',
  'ComputeValue',
  ['123', 'ABC']
);</code></pre>
  <p>Returns raw JSON from the server.</p>

  <h2><strong>Parameters</strong></h2>
  <p>SQL parameters are auto‑detected:</p>
  <pre><code>SELECT * FROM Sample.Person WHERE Name = :Name</code></pre>
  <p>Then set:</p>
  <pre><code>IrisQuery.Parameters.ParamByName('Name').AsString := 'John';</code></pre>

  <h2><strong>Namespace Discovery</strong></h2>
  <pre><code>var list := TStringList.Create;
IrisQuery.GetNamespaces(list, 'USER');
ShowMessage(list.Text);</code></pre>

  <h2><strong>Notes &amp; Limitations</strong></h2>
  <ul>
    <li>Blob fields are not supported for posting.</li>
    <li>
      To enable editing, your SQL must include:<br />
      <code>%ClassName As __class</code>
    </li>
    <li>
      The component expects IRIS REST endpoints:
      <ul>
        <li><code>/query</code></li>
        <li><code>/post</code></li>
        <li><code>/delete</code></li>
        <li><code>/procedure</code></li>
      </ul>
    </li>
  </ul>

  <h2><strong>Helper Functions</strong></h2>
  <ul>
    <li><strong>NormalizeScript</strong> – cleans IRIS scripts for REST transport</li>
    <li><strong>Fetch</strong> – extracts delimited substrings</li>
    <li><strong>CheckError</strong> – raises exception on failed conditions</li>
  </ul>

  <h2><strong>License</strong></h2>
  <p>
    MIT.
  </p>

  <h2><strong>Contributing</strong></h2>
  <p>Pull requests and suggestions are welcome. If you build additional IRIS components, feel free to extend this repository.</p>

  <h2><strong>Author</strong></h2>
  <p><strong>Dmitry Konnov</strong><br />
     RocketCitySoft LLC<br />
     <a href="https://www.rocketcitysoft.com">https://www.rocketcitysoft.com</a>
  </p>
</body>
</html>
