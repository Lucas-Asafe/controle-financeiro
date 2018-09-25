unit ufrmPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  System.Actions, FMX.ActnList, FMX.MultiView, FMX.ListBox;

type
  TfrmPrincipal = class(TForm)
    tbcPrincipal: TTabControl;
    tabLogin: TTabItem;
    tabMain: TTabItem;
    Rectangle1: TRectangle;
    Image1: TImage;
    Layout1: TLayout;
    Label1: TLabel;
    edtEmail: TEdit;
    Label2: TLabel;
    edtSenha: TEdit;
    btnAcessar: TButton;
    StyleBook1: TStyleBook;
    ActionList1: TActionList;
    actMudaAba: TChangeTabAction;
    ToolBar1: TToolBar;
    btn_menu: TSpeedButton;
    Rectangle2: TRectangle;
    Label3: TLabel;
    Label4: TLabel;
    Layout2: TLayout;
    Layout3: TLayout;
    Label5: TLabel;
    Label6: TLabel;
    Layout4: TLayout;
    Label7: TLabel;
    Label8: TLabel;
    Layout5: TLayout;
    imgReceita: TImage;
    imgDespesa: TImage;
    MultiView: TMultiView;
    Rectangle3: TRectangle;
    Image2: TImage;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    tabLancamentos: TTabItem;
    ToolBar2: TToolBar;
    btnVoltar: TSpeedButton;
    Label9: TLabel;
    Rectangle4: TRectangle;
    Label10: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ListBox2: TListBox;
    Rectangle5: TRectangle;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    Layout6: TLayout;
    Label11: TLabel;
    Label12: TLabel;
    Layout7: TLayout;
    Label13: TLabel;
    Label14: TLabel;
    procedure btnAcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
  private
    procedure mudaParaAba(pAba: TTabItem);
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.btnAcessarClick(Sender: TObject);
begin
  mudaParaAba(tabMain);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  tbcPrincipal.ActiveTab := TabLogin;
  tbcPrincipal.TabPosition := TTabPosition.None;
end;

procedure TfrmPrincipal.ListBoxItem2Click(Sender: TObject);
begin
  mudaParaAba(tabLancamentos);
  MultiView.Visible := false;
end;

procedure TfrmPrincipal.mudaParaAba(pAba: TTabItem);
begin
  actMudaAba.Tab := pAba;
  actMudaAba.ExecuteTarget(Self);
end;

end.

