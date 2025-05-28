program simpletest;

uses
  // OExport_VclForms,
  OExport, OExport_Vcl, SysUtils, Graphics;

procedure CreateDocument(const aFileName: String);
var xExport: TOExport;
begin
  xExport := TOExport.Create;
  try
    with xExport.AddWorkSheet('simple types') do begin
      AddRow;
      with AddRow do begin
        AddCellString('string').SetWidth(200);
        AddCellString('my "custom" string').SetWidth(400).
          SetAlignment(cahCenter).SetBorders(cbAll, ebThick, clGreen).
          SetBorder(cbBottom, ebDouble, clRed);
      end;
      with AddRow do begin
        AddCellString('integer');
        AddCellNumber(15, 0);
      end;
      with AddRow do begin
        AddCellString('float');
        AddCellNumber(15.7812, 2);
      end;
      with AddRow do begin
        AddCellString('formula');
        AddCellFormulaNumber('B3+100*B4', 2);
      end;
      with AddRow do begin
        AddCellString('date');
        AddCellDate(Now);
      end;
      AddRow;
      with AddRow do begin
        AddCellString;
        AddCellString('cell spanned over 3 columns and 2 rows').SetColSpan(3).SetRowSpan(2).
          SetVAlignment(cavCenter).SetAlignment(cahCenter).SetBorders(cbAll, ebMedium, clBlue).
          SetBGColor(clYellow);
      end;
    end;

    xExport.SaveToFile(aFileName);
  finally
    xExport.Free;
  end;
end;


//{$R *.res}

begin
  //Application.Initialize; // Initialize the LCL application
  CreateDocument('./simple.xlsx');
  //Application.Terminate;
end.

