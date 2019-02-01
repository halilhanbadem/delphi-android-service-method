//// Creator ---> Halil Han Badem



unit AndroidServiceMethod;

interface

uses
System.SysUtils,
System.Classes;

procedure ServiceLoop(const MilliSec: Cardinal; ProcedureName: TProc);

implementation

procedure ServiceLoop(const MilliSec: Cardinal; ProcedureName: TProc);
begin
  TThread.CreateAnonymousThread(
 procedure()
 var
   A: Boolean;
   begin
     A := False;
     Repeat
      begin
      Sleep(MilliSec);
            ProcedureName;
      end;
     Until A = True;
   end).Start;
end;
end.
