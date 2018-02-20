unit UGrid;
{
  demonstrates how to use the OnDrawCell event handler of a StringGrid to
  display individual cells according to their contents.
  The use can choose whether to display coloured text or images in the grid.
  The images are stored in an ImageList component
}
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls, ImgList, Vcl.Menus;

type
    comboArray = array[1..26] of string;
    cubeArray = array[1..54] of string;
  TGridform = class(TForm)
    UpGrid: TStringGrid;
    FillBtn: TButton;
    ChoiceRG: TRadioGroup;
    FrontGrid: TStringGrid;
    DownGrid: TStringGrid;
    BackGrid: TStringGrid;
    RightGrid: TStringGrid;
    LeftGrid: TStringGrid;
    ExitBtn: TButton;
    Solve: TButton;
    Next: TButton;
    Previous: TButton;
    RubiksLbl: TLabel;
    Solve2: TButton;
    Tutorial: TButton;
    ChooseLbl: TLabel;
    MainMenu: TMainMenu;
    Menu1: TMenuItem;
    TutorialMenu: TMenuItem;
    SolveMenu: TMenuItem;
    ExitMenu: TMenuItem;
    Step1: TButton;
    Step2: TButton;
    Step4: TButton;
    Step3: TButton;
    Step5: TButton;
    Step6: TButton;
    procedure FillBtnClick(Sender: TObject);
    procedure UpGridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure ExitBtnClick(Sender: TObject);
    procedure Solve2Click(Sender: TObject);
    procedure TutorialClick(Sender: TObject);
    procedure TutorialMenuClick(Sender: TObject);
    procedure SolveMenuClick(Sender: TObject);
    procedure ExitMenuClick(Sender: TObject);
    procedure Step1Click(Sender: TObject);
  private
    grid: tstringgrid;
    combinations: comboArray;
    cubie: cubeArray;
    n: integer;
  public
    { Public declarations }
  end;

var
  Gridform: TGridform;

implementation

{$R *.dfm}

procedure cubes(sender: TObject; combinations: comboArray);
var
  i:integer;
begin
  for i := 1 to 26 do
  case i of
   1: combinations[i]:= 'w';
   2: combinations[i]:= 'y';
   3: combinations[i]:= 'o';
   4: combinations[i]:= 'r';
   5: combinations[i]:= 'g';
   6: combinations[i]:= 'b';
   
   7: combinations[i]:= 'wg';
   8: combinations[i]:= 'wr';
   9: combinations[i]:= 'wb';
  10: combinations[i]:= 'wo';
  
  11: combinations[i]:= 'og';
  12: combinations[i]:= 'gr';
  13: combinations[i]:= 'rb';
  14: combinations[i]:= 'bo';

  15: combinations[i]:= 'yg';
  16: combinations[i]:= 'yr';
  17: combinations[i]:= 'yb';
  18: combinations[i]:= 'yo';

  19: combinations[i]:= 'wrg';
  20: combinations[i]:= 'wrb';
  21: combinations[i]:= 'wbo';
  22: combinations[i]:= 'wog';

  23: combinations[i]:= 'yrg';
  24: combinations[i]:= 'yrb';
  25: combinations[i]:= 'yob';
  26: combinations[i]:= 'yog';
  end;

  for i := 1 to 54 do
  case i of
   1: cubes[i]:= 'U1';
   2: cubes[i]:= 'U2';
   3: cubes[i]:= 'U3';
   4: cubes[i]:= 'U4';
   5: cubes[i]:= 'U5';
   6: cubes[i]:= 'U6';
   7: cubes[i]:= 'U7';
   8: cubes[i]:= 'U8';
   9: cubes[i]:= 'U9';

  10: cubes[i]:= 'D1';
  11: cubes[i]:= 'D2';
  12: cubes[i]:= 'D3';
  13: cubes[i]:= 'D4';
  14: cubes[i]:= 'D5';
  15: cubes[i]:= 'D6';
  16: cubes[i]:= 'D7';
  17: cubes[i]:= 'D8';
  18: cubes[i]:= 'D9';

  19: cubes[i]:= 'B1';
  20: cubes[i]:= 'B2';
  21: cubes[i]:= 'B3';
  22: cubes[i]:= 'B4';
  23: cubes[i]:= 'B5';
  24: cubes[i]:= 'B6';
  25: cubes[i]:= 'B7';
  26: cubes[i]:= 'B8';
  27: cubes[i]:= 'B9';

  28: cubes[i]:= 'F1';
  29: cubes[i]:= 'F2';
  30: cubes[i]:= 'F3';
  31: cubes[i]:= 'F4';
  32: cubes[i]:= 'F5';
  33: cubes[i]:= 'F6';
  34: cubes[i]:= 'F7';
  35: cubes[i]:= 'F8';
  36: cubes[i]:= 'F9';

  37: cubes[i]:= 'L1';
  38: cubes[i]:= 'L2';
  39: cubes[i]:= 'L3';
  40: cubes[i]:= 'L4';
  41: cubes[i]:= 'L5';
  42: cubes[i]:= 'L6';
  43: cubes[i]:= 'L7';
  44: cubes[i]:= 'L8';
  45: cubes[i]:= 'L9';

  46: cubes[i]:= 'R1';
  47: cubes[i]:= 'R2';
  48: cubes[i]:= 'R3';
  49: cubes[i]:= 'R4';
  50: cubes[i]:= 'R5';
  51: cubes[i]:= 'R6';
  52: cubes[i]:= 'R7';
  53: cubes[i]:= 'R8';
  54: cubes[i]:= 'R9';
  end;
end;

procedure TGridform.ExitBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TGridform.ExitMenuClick(Sender: TObject);
begin
  close;
end;

procedure TGridform.FillBtnClick(Sender: TObject);
//fill grid with random integers
// a stringgrid has a Cells property, essentially a 2D array of strings
var
  i, j: Integer;
begin
 with Grid do
  begin
    for i := 0 to 8 do
      for j := 0 to 8 do
        Cells[i, j] := inttostr(random(6));
  end;
end;

procedure TGridform.Solve2Click(Sender: TObject);
begin
  RubiksLbl.Visible:=false;
  Solve2.Visible:=false;
  Tutorial.Visible:=false;
  ChooseLbl.Visible:=false;
  UpGrid.Visible:=true;
  DownGrid.Visible:=true;
  BackGrid.Visible:=true;
  FrontGrid.Visible:=true;
  RightGrid.Visible:=true;
  LeftGrid.Visible:=true;
  FillBtn.Visible:=true;
  ExitBtn.Visible:=true;
  Solve.Visible:=true;
  Next.Visible:=true;
  Previous.Visible:=true;
  ChoiceRG.Visible:=true;
  Step1.Visible:=false;
  Step2.Visible:=false;
  Step3.Visible:=false;
  Step4.Visible:=false;
  Step5.Visible:=false;
  Step6.Visible:=false;
end;

procedure TGridform.SolveMenuClick(Sender: TObject);
begin
  RubiksLbl.Visible:=false;
  Solve2.Visible:=false;
  Tutorial.Visible:=false;
  ChooseLbl.Visible:=false;
  UpGrid.Visible:=true;
  DownGrid.Visible:=true;
  BackGrid.Visible:=true;
  FrontGrid.Visible:=true;
  RightGrid.Visible:=true;
  LeftGrid.Visible:=true;
  FillBtn.Visible:=true;
  ExitBtn.Visible:=true;
  Solve.Visible:=true;
  Next.Visible:=true;
  Previous.Visible:=true;
  ChoiceRG.Visible:=true;
  Step1.Visible:=false;
  Step2.Visible:=false;
  Step3.Visible:=false;
  Step4.Visible:=false;
  Step5.Visible:=false;
  Step6.Visible:=false;
end;

procedure TGridform.Step1Click(Sender: TObject);
var
   i, j: integer;
begin

end;

procedure TGridform.TutorialClick(Sender: TObject);
begin
  RubiksLbl.Visible:=false;
  Solve2.Visible:=false;
  Tutorial.Visible:=false;
  ChooseLbl.Visible:=false;
  UpGrid.Visible:=true;
  DownGrid.Visible:=true;
  BackGrid.Visible:=true;
  FrontGrid.Visible:=true;
  RightGrid.Visible:=true;
  LeftGrid.Visible:=true;
  ExitBtn.Visible:=true;
  Solve.Visible:=false;
  Next.Visible:=true;
  Previous.Visible:=true;
  Step1.Visible:=true;
  Step2.Visible:=true;
  Step3.Visible:=true;
  Step4.Visible:=true;
  Step5.Visible:=true;
  Step6.Visible:=true;
end;

procedure TGridform.TutorialMenuClick(Sender: TObject);
begin
  RubiksLbl.Visible:=false;
  Solve2.Visible:=false;
  Tutorial.Visible:=false;
  ChooseLbl.Visible:=false;
  UpGrid.Visible:=true;
  DownGrid.Visible:=true;
  BackGrid.Visible:=true;
  FrontGrid.Visible:=true;
  RightGrid.Visible:=true;
  LeftGrid.Visible:=true;
  ExitBtn.Visible:=true;
  Solve.Visible:=false;
  Next.Visible:=true;
  Previous.Visible:=true;
  Step1.Visible:=true;
  Step2.Visible:=true;
  Step3.Visible:=true;
  Step4.Visible:=true;
  Step5.Visible:=true;
  Step6.Visible:=true;
end;

procedure TGridform.UpGridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
// called whenever a cell is drawn
// ACol and ARow are column and row number of cell
// Rect is rectangle bounding cell
var
  value: Integer;
  GridName: string;
begin
  value := 0;
  gridname:= (sender as TStringGrid).name;
  case GridName[1] of
   'U': Grid:= UpGrid;
   'D': Grid:= DownGrid;
   'F': Grid:= FrontGrid;
   'B': Grid:= BackGrid;
   'R': Grid:= RightGrid;
   'L': Grid:= LeftGrid;
  end;
  with Grid do
  begin
    // get cell contents and convert to integer
    if Cells[ACol, ARow] <> '' then
      value := strtoint(Cells[ACol, ARow]);
    case ChoiceRG.ItemIndex of  //find out what the user has chosen
      0:
      begin
        with Upgrid do
        begin
          Canvas.Brush.Color:=ClYellow;
          canvas.FillRect(Rect);
        end;
        with Downgrid do
        begin
          Canvas.Brush.Color:=ClWhite;
          canvas.FillRect(Rect);
        end;
        with Frontgrid do
        begin
          Canvas.Brush.Color:=ClBlue;
          canvas.FillRect(Rect);
        end;
        with Backgrid do
        begin
          Canvas.Brush.Color:=ClGreen;
          canvas.FillRect(Rect);
        end;
        with Rightgrid do
        begin
          Canvas.Brush.Color:=ClRed;
          canvas.FillRect(Rect);
        end;
        with Leftgrid do
        begin
          Canvas.Brush.Color:=rgb(254,156,24);
          canvas.FillRect(Rect);
        end;
      end;
      
      1:begin         
       case value of
            0: Canvas.Brush.Color := clwhite;
            1: Canvas.Brush.Color := clred;
            2: Canvas.Brush.Color:= rgb(254,156,24);
            3: Canvas.Brush.Color := clyellow;
            4: Canvas.Brush.Color := clgreen;
            5: Canvas.Brush.Color := clblue;
       end;
      end;
      2: Canvas.Brush.Color := clwhite;
      3: Canvas.Brush.Color := clred;
      4: Canvas.Brush.Color:= rgb(254,156,24);
      5: Canvas.Brush.Color := clyellow;
      6: Canvas.Brush.Color := clgreen;
      7: Canvas.Brush.Color := clblue;
    end;   //case ChoiceRG.ItemIndex
     canvas.FillRect(Rect);
  end;  //with


end;

end.
