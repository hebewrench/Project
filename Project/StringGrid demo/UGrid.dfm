object Gridform: TGridform
  Left = 0
  Top = 0
  Cursor = crArrow
  Caption = 'Gridform'
  ClientHeight = 691
  ClientWidth = 834
  Color = clGradientActiveCaption
  Constraints.MaxHeight = 750
  Constraints.MaxWidth = 850
  Constraints.MinHeight = 750
  Constraints.MinWidth = 850
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RubiksLbl: TLabel
    Left = 189
    Top = 184
    Width = 466
    Height = 58
    Caption = 'Rubiks Cube Solver'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ChooseLbl: TLabel
    Left = 48
    Top = 255
    Width = 770
    Height = 33
    Caption = 'Do you want to solve a cube or learn the method to solve cubes?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object UpGrid: TStringGrid
    Left = 248
    Top = 24
    Width = 161
    Height = 161
    ColCount = 3
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Visible = False
    OnDrawCell = UpGridDrawCell
    ColWidths = (
      50
      50
      50)
    RowHeights = (
      50
      50
      50)
  end
  object FillBtn: TButton
    Left = 624
    Top = 276
    Width = 81
    Height = 25
    Caption = 'Fill Grid'
    TabOrder = 1
    Visible = False
    OnClick = FillBtnClick
  end
  object ChoiceRG: TRadioGroup
    Left = 622
    Top = 64
    Width = 101
    Height = 185
    Caption = 'Fill style'
    ItemIndex = 0
    Items.Strings = (
      'Reset'
      'Random'
      'White'
      'Red'
      'Orange'
      'Yellow'
      'Green'
      'Blue')
    TabOrder = 2
    Visible = False
  end
  object FrontGrid: TStringGrid
    Left = 248
    Top = 504
    Width = 161
    Height = 161
    ColCount = 3
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    OnDrawCell = UpGridDrawCell
    ColWidths = (
      50
      50
      50)
    RowHeights = (
      50
      50
      50)
  end
  object DownGrid: TStringGrid
    Left = 248
    Top = 344
    Width = 161
    Height = 161
    ColCount = 3
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Visible = False
    OnDrawCell = UpGridDrawCell
    ColWidths = (
      50
      50
      50)
    RowHeights = (
      50
      50
      50)
  end
  object BackGrid: TStringGrid
    Left = 248
    Top = 184
    Width = 161
    Height = 161
    ColCount = 3
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    OnDrawCell = UpGridDrawCell
    ColWidths = (
      50
      50
      50)
    RowHeights = (
      50
      50
      50)
  end
  object RightGrid: TStringGrid
    Left = 407
    Top = 344
    Width = 161
    Height = 161
    ColCount = 3
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Visible = False
    OnDrawCell = UpGridDrawCell
    ColWidths = (
      50
      50
      50)
    RowHeights = (
      50
      50
      50)
  end
  object LeftGrid: TStringGrid
    Left = 87
    Top = 344
    Width = 161
    Height = 161
    ColCount = 3
    DefaultColWidth = 50
    DefaultRowHeight = 50
    FixedCols = 0
    RowCount = 3
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Visible = False
    OnDrawCell = UpGridDrawCell
    ColWidths = (
      50
      50
      50)
    RowHeights = (
      50
      50
      50)
  end
  object ExitBtn: TButton
    Left = 624
    Top = 400
    Width = 81
    Height = 25
    Caption = 'Exit'
    TabOrder = 8
    Visible = False
    OnClick = ExitBtnClick
  end
  object Solve: TButton
    Left = 624
    Top = 307
    Width = 81
    Height = 25
    Caption = 'Solve'
    TabOrder = 9
    Visible = False
  end
  object Next: TButton
    Left = 624
    Top = 338
    Width = 81
    Height = 25
    Caption = 'Next Step'
    TabOrder = 10
    Visible = False
  end
  object Previous: TButton
    Left = 624
    Top = 369
    Width = 81
    Height = 25
    Caption = 'Previous Step'
    TabOrder = 11
    Visible = False
  end
  object Solve2: TButton
    Left = 328
    Top = 307
    Width = 81
    Height = 25
    Caption = 'Solve'
    TabOrder = 12
    OnClick = Solve2Click
  end
  object Tutorial: TButton
    Left = 423
    Top = 307
    Width = 81
    Height = 25
    Caption = 'Tutorial'
    TabOrder = 13
    OnClick = TutorialClick
  end
  object Step1: TButton
    Left = 16
    Top = 56
    Width = 65
    Height = 25
    Caption = 'Step 1'
    TabOrder = 14
    Visible = False
    OnClick = Step1Click
  end
  object Step2: TButton
    Left = 16
    Top = 87
    Width = 65
    Height = 25
    Caption = 'Step 2'
    TabOrder = 15
    Visible = False
  end
  object Step4: TButton
    Left = 16
    Top = 149
    Width = 65
    Height = 25
    Caption = 'Step 4'
    TabOrder = 16
    Visible = False
  end
  object Step3: TButton
    Left = 16
    Top = 118
    Width = 65
    Height = 25
    Caption = 'Step 3'
    TabOrder = 17
    Visible = False
  end
  object Step5: TButton
    Left = 16
    Top = 180
    Width = 65
    Height = 25
    Caption = 'Step 5'
    TabOrder = 18
    Visible = False
  end
  object Step6: TButton
    Left = 16
    Top = 211
    Width = 65
    Height = 25
    Caption = 'Step 6'
    TabOrder = 19
    Visible = False
  end
  object MainMenu: TMainMenu
    object Menu1: TMenuItem
      Caption = 'Menu'
      object TutorialMenu: TMenuItem
        Caption = 'Tutorial'
        OnClick = TutorialMenuClick
      end
      object SolveMenu: TMenuItem
        Caption = 'Solve My Cube'
        OnClick = SolveMenuClick
      end
      object ExitMenu: TMenuItem
        Caption = 'Exit'
        OnClick = ExitMenuClick
      end
    end
  end
end
