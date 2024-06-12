program Zoomicon.Generics.Tests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  Test.Zoomicon.Generics in 'Test.Zoomicon.Generics.pas';

{$R *.RES}

begin
  ReportMemoryLeaksOnShutdown := True; //added to check memory leaks on exit (TODO: may not be needed, there is dunit.ini generated next to the tests executable that has various probably related settings)
  DUnitTestRunner.RunRegisteredTests;
end.

