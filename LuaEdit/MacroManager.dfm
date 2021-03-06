object frmMacroManager: TfrmMacroManager
  Left = 382
  Top = 233
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Macro Manager'
  ClientHeight = 407
  ClientWidth = 458
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  DesignSize = (
    458
    407)
  PixelsPerInch = 96
  TextHeight = 13
  object sbtnAdd: TSpeedButton
    Left = 56
    Top = 208
    Width = 23
    Height = 22
    Hint = 'Create New Macro'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      0000000000000000000000000000000000000000000000000000000000000000
      00FF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FF
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00FF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF00FF
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000FF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF000000000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      000000000000000000000000000000000000000000000000FF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    OnClick = sbtnAddClick
  end
  object sbtnDelete: TSpeedButton
    Left = 8
    Top = 208
    Width = 23
    Height = 22
    Hint = 'Delete Selected Macro'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FF000080FF00FFFF00FFFF00FFFF00FFFF00FF000080FFFFFFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF000080000080000080FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF000080FFFFFFFF00FFFF00FFFF00FFFF00FF000080000080000080FFFFFFFF
      00FFFF00FFFF00FFFF00FFFF00FF000080FFFFFFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FF000080000080000080FFFFFFFF00FFFF00FFFF00FF0000800000
      80FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00008000008000
      0080FFFFFFFF00FF000080000080FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF000080000080000080000080000080FFFFFFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
      0080000080000080FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FF000080000080000080000080000080FFFFFFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00008000008000
      0080FFFFFFFF00FF000080FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FF000080000080000080000080FFFFFFFF00FFFF00FFFF00FF0000800000
      80FFFFFFFF00FFFF00FFFF00FFFF00FF000080000080000080000080FFFFFFFF
      00FFFF00FFFF00FFFF00FFFF00FF000080000080FFFFFFFF00FFFF00FFFF00FF
      000080000080FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FF000080000080FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    OnClick = sbtnDeleteClick
  end
  object sbtnSave: TSpeedButton
    Left = 32
    Top = 208
    Width = 23
    Height = 22
    Hint = 'Save Changes to Selected Macro'
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      1800000000000003000000000000000000000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FF42424242424242424242424242424242
      4242424242424242424242424242424242424242424242FF00FFFF00FF424242
      429D9D429D9D424242424242424242424242424242424242CECECECECECE4242
      42429D9D424242FF00FFFF00FF424242429D9D429D9D42424242424242424242
      4242424242424242CECECECECECE424242429D9D424242FF00FFFF00FF424242
      429D9D429D9D424242424242424242424242424242424242CECECECECECE4242
      42429D9D424242FF00FFFF00FF424242429D9D429D9D42424242424242424242
      4242424242424242424242424242424242429D9D424242FF00FFFF00FF424242
      429D9D429D9D429D9D429D9D429D9D429D9D429D9D429D9D429D9D429D9D429D
      9D429D9D424242FF00FFFF00FF424242429D9D429D9D42424242424242424242
      4242424242424242424242424242429D9D429D9D424242FF00FFFF00FF424242
      429D9D424242CECECECECECECECECECECECECECECECECECECECECECECECE4242
      42429D9D424242FF00FFFF00FF424242429D9D424242CECECECECECECECECECE
      CECECECECECECECECECECECECECE424242429D9D424242FF00FFFF00FF424242
      429D9D424242CECECECECECECECECECECECECECECECECECECECECECECECE4242
      42429D9D424242FF00FFFF00FF424242429D9D424242CECECECECECECECECECE
      CECECECECECECECECECECECECECE424242429D9D424242FF00FFFF00FF424242
      429D9D424242CECECECECECECECECECECECECECECECECECECECECECECECE4242
      42424242424242FF00FFFF00FF424242429D9D424242CECECECECECECECECECE
      CECECECECECECECECECECECECECE424242CECECE424242FF00FFFF00FF424242
      4242424242424242424242424242424242424242424242424242424242424242
      42424242424242FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    OnClick = sbtnSaveClick
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 441
    Height = 193
    Caption = 'Macro Informations'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 72
      Width = 50
      Height = 13
      Caption = 'File Name:'
    end
    object Label2: TLabel
      Left = 16
      Top = 120
      Width = 69
      Height = 13
      Caption = 'Menu Caption:'
    end
    object Label3: TLabel
      Left = 352
      Top = 120
      Width = 43
      Height = 13
      Caption = 'Shortcut:'
    end
    object Label4: TLabel
      Left = 16
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Name:'
    end
    object cboShortcut: TComboBox
      Left = 352
      Top = 136
      Width = 81
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 4
      OnClick = cboShortcutClick
      Items.Strings = (
        '[None]'
        'Shift+0'
        'Shift+1'
        'Shift+2'
        'Shift+3'
        'Shift+4'
        'Shift+5'
        'Shift+6'
        'Shift+7'
        'Shift+8'
        'Shift+9')
    end
    object txtCaption: TEdit
      Left = 16
      Top = 136
      Width = 329
      Height = 21
      TabOrder = 3
      OnChange = txtCaptionChange
    end
    object chkDebug: TCheckBox
      Left = 16
      Top = 168
      Width = 153
      Height = 17
      Caption = 'Debug mode'
      TabOrder = 5
      OnClick = chkDebugClick
    end
    object txtFileName: TEdit
      Left = 16
      Top = 89
      Width = 393
      Height = 21
      TabOrder = 1
      OnChange = txtFileNameChange
    end
    object btnBrowseFile: TButton
      Left = 414
      Top = 91
      Width = 19
      Height = 17
      Caption = '...'
      TabOrder = 2
      OnClick = btnBrowseFileClick
    end
    object txtName: TEdit
      Left = 16
      Top = 41
      Width = 417
      Height = 21
      TabOrder = 0
      OnChange = txtNameChange
    end
  end
  object Button2: TButton
    Left = 375
    Top = 377
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = '&Close'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
  object vstMacros: TVirtualStringTree
    Left = 8
    Top = 232
    Width = 441
    Height = 137
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'MS Sans Serif'
    Header.Font.Style = []
    Header.Options = [hoColumnResize, hoDrag, hoVisible]
    ScrollBarOptions.AlwaysVisible = True
    TabOrder = 0
    TreeOptions.PaintOptions = [toShowButtons, toShowDropmark, toThemeAware, toUseBlendedImages]
    TreeOptions.SelectionOptions = [toFullRowSelect]
    OnFocusChanged = vstMacrosFocusChanged
    OnFocusChanging = vstMacrosFocusChanging
    OnGetText = vstMacrosGetText
    OnGetNodeDataSize = vstMacrosGetNodeDataSize
    Columns = <
      item
        Position = 0
        Width = 100
        WideText = 'Name'
      end
      item
        Position = 1
        Width = 171
        WideText = 'File Name'
      end
      item
        Position = 2
        Width = 100
        WideText = 'Caption'
      end
      item
        Position = 3
        WideText = 'Shotcut'
      end
      item
        Position = 4
        WideText = 'Mode'
      end>
  end
  object odlgSelectFile: TOpenDialog
    Filter = 'LuaEdit Macros (*.lmc)|*.lmc'
    InitialDir = 'C:\'
    Title = 'Select a LuaEdit Macro File...'
    Left = 12
    Top = 376
  end
end
