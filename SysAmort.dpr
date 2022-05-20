program SysAmort;

uses
  Forms,
  UMain in 'UMain.pas' {FMain},
  UChild in 'UChild.pas' {FChild};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
