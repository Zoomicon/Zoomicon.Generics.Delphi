unit Test.Zoomicon.Generics; //Delphi DUnit Test Cases

interface
  uses

    TestFramework,
    //System.Net.URLClient,
    System.Classes;

  //const




  type

    // Test methods for class TFileGenerics

    TestTFileGenerics = class(TTestCase)
      strict private


      private

      public
        procedure SetUp; override;
        procedure TearDown; override;

      published //need to pubish Test cases for them to be used
        procedure TestA;
        procedure   TestB;

    end;

implementation


{$region 'SetUp / TearDown'}

procedure TestTFileGenerics.SetUp;
begin
  //FContentCache := TFileCache.Create As IContentCache;
end;

procedure TestTFileGenerics.TearDown;
begin
  //FContentCache is reference counted, so object it points to will be released automatically
end;

{$endregion}

{$region 'Helpers'}



{$endregion}

procedure TestTFileGenerics.TestA;
begin
  //DoTestSingleDownload(DOWNLOAD_URI_STR, SAVE_FILENAME, FContentCache);
end;


procedure TestTFileGenerics.TestB;
begin
  try
    //DoTestSingleDownload(DOWNLOAD_URI_WRONG, SAVE_FILENAME_WRONGURI, FContentCache, false);
  except
    //on e: ENetUriException do
      {ShowException(e, ExceptAddr)}; //silently catching exception for wrong url
  end;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTFileGenerics.Suite);
end.

