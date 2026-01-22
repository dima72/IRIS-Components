unit X2IrisComponentsReg;
{
  Copyrights@ 2025 RocketCitySoft LLC.
  https://www.rocketcitysoft.com
  Author: Dmitry Konnov konnov72@gmail.com
}

interface
uses System.Classes, X2IrisQuery, CustomDebugDialog;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('IRIS', [TX2IrisQuery]);
  RegisterClasses([TfrmCustomDebug]);
end;


end.
