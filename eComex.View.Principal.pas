unit eComex.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Dialogs, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ImgList, Vcl.Menus, Vcl.CustomizeDlg, Vcl.ComCtrls, System.Win.TaskbarCore,
  Vcl.Taskbar, System.ImageList, Vcl.StdActns, eComex.Controller.Login,
  eComex.Controller.Config, eComex.Controller.Global, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.ActnColorMaps, Vcl.DBCGrids, Vcl.WinXCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.WinXPanels, eComex.Frame.SearchDoc,
  Vcl.Controls;

type
  TMyHintWindow = class(THintWindow)
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TviewPrincipal = class(TForm)
    //Acoes : TActionManager;
    iml_16: TImageList;
    iml_48: TImageList;
    acmAcoes: TActionManager;
    acSistemaLogin: TAction;
    ac_cadpaises: TAction;
    ac_cadperfil: TAction;
    acConfiguracoes: TAction;
    ac_helpajuda: TAction;
    acNotasDeEntradas: TAction;
    ac_fincontasareceber: TAction;
    ac_fertecladovirtual: TAction;
    ac_relempresa: TAction;
    acSistemaSair: TAction;
    acmBarraMenu: TActionMainMenuBar;
    iml_16d: TImageList;
    iml_48d: TImageList;
    ac_cadestados: TAction;
    ac_cadcidades: TAction;
    ac_cadsetores: TAction;
    ac_cadempresas: TAction;
    ac_helpsobre: TAction;
    acNotasDeSaidas: TAction;
    ac_fercalculadora: TAction;
    ac_fercorreio: TAction;
    ac_fermensagens: TAction;
    ac_fercalendario: TAction;
    ac_cadfuncionarios: TAction;
    ac_fincontasapagar: TAction;
    ac_cadpermissoes: TAction;
    ac_cadprodutos: TAction;
    ac_cadfornecedores: TAction;
    ac_cadclientes: TAction;
    ac_cadcontatos: TAction;
    ac_fintransferencias: TAction;
    ac_feragenda: TAction;
    ac_cadtransportadoras: TAction;
    acbFerramentas: TActionToolBar;
    popPrincipal: TPopupMenu;
    dlgCustomizacao: TCustomizeDlg;
    tbnJanelas: TToolBar;
    acLogDUE: TAction;
    pnlScreens: TPanel;
    pnlScreenCaption: TPanel;
    imgAppClose: TImage;
    imgAppMinimized: TImage;
    imgUser: TImage;
    lblUserName: TLabel;
    lblBusinessName: TLabel;
    acPreVenda: TAction;
    popMenuToolButton: TPopupMenu;
    popPersonalizarBarradeFerramentas: TMenuItem;
    popRestaurardoPadrao: TMenuItem;
    popSalvarComoPadrao: TMenuItem;
    imlTools: TImageList;
    pnlStatus: TPanel;
    imgFerramenta: TImage;
    spvToolBar: TSplitView;
    cpnToolBar: TCardPanel;
    cardSearchDoc: TCard;
    cardMails: TCard;
    frameSearchDocto: TframeSearchDoc;
    pnlToolsHeader: TPanel;
    pnlToolBtn: TPanel;
    tbrTools: TToolBar;
    tobToolDoc: TToolButton;
    tobToolMails: TToolButton;
    ac_cadplanilhaitem: TAction;
    procedure acSistemaSairExecute(Sender: TObject);
    procedure acSistemaLoginExecute(Sender: TObject);
    procedure ac_helpajudaExecute(Sender: TObject);
    procedure ac_helpsobreExecute(Sender: TObject);
    procedure ac_fertecladovirtualExecute(Sender: TObject);
    procedure ac_fercalculadoraExecute(Sender: TObject);
    procedure ac_fercorreioExecute(Sender: TObject);
    procedure ac_fermensagensExecute(Sender: TObject);
    procedure ac_fercalendarioExecute(Sender: TObject);
    procedure ac_cadempresasExecute(Sender: TObject);
    procedure ac_cadsetoresExecute(Sender: TObject);
    procedure ac_cadcidadesExecute(Sender: TObject);
    procedure ac_cadestadosExecute(Sender: TObject);
    procedure ac_cadfuncionariosExecute(Sender: TObject);
    procedure acConfiguracoesExecute(Sender: TObject);
    procedure ac_fincontasareceberExecute(Sender: TObject);
    procedure ac_fincontasapagarExecute(Sender: TObject);
    procedure ac_cadperfilExecute(Sender: TObject);
    procedure ac_fintransferenciasExecute(Sender: TObject);
    procedure ac_feragendaExecute(Sender: TObject);
    procedure acNotasDeEntradasExecute(Sender: TObject);
    procedure acNotasDeSaidasExecute(Sender: TObject);
    procedure ac_cadcontatosExecute(Sender: TObject);
    procedure ac_cadclientesExecute(Sender: TObject);
    procedure ac_cadfornecedoresExecute(Sender: TObject);
    procedure ac_cadpermissoesExecute(Sender: TObject);
    procedure ac_cadtransportadorasExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acLogDUEExecute(Sender: TObject);
    procedure imgAppCloseClick(Sender: TObject);
    procedure acPreVendaExecute(Sender: TObject);
    procedure imgAppMinimizedClick(Sender: TObject);
    procedure dlgCustomizacaoClose(Sender: TObject);
    procedure imgUserClick(Sender: TObject);
    procedure popPersonalizarBarradeFerramentasClick(Sender: TObject);
    procedure popRestaurardoPadraoClick(Sender: TObject);
    procedure popSalvarComoPadraoClick(Sender: TObject);
    procedure txtSearchDocPedidoClick(Sender: TObject);
    procedure imgFerramentaClick(Sender: TObject);
    procedure tobToolDocClick(Sender: TObject);
    procedure tobToolMailsClick(Sender: TObject);
    procedure ac_cadplanilhaitemExecute(Sender: TObject);
    //procedure ctgSearchDocExit(Sender: TObject);
  private
    { Private declarations }

    { Public declarations }
  public
    procedure AtivaToolButton(Sender: TObject);
    procedure CriaToolButton(Formulario: TForm; Acao: TAction; TextoAux : String = '');
    procedure OnClickToolButton(Sender: TObject);
    procedure OnDestroyToolButton(Sender: TObject);
  end;

var
  viewPrincipal: TviewPrincipal;

implementation

{$R *.dfm}

uses eComex.View.Login, eComex.View.DUE, eComex.View.CadastroEmpresa,
  eComex.Controller.Utils, eComex.View.PreVenda, eComex.View.Configuracao;


procedure TviewPrincipal.ac_feragendaExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_helpajudaExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadcidadesExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadclientesExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadcontatosExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadempresasExecute(Sender: TObject);
begin
  viewCadastroEmpresa := TviewCadastroEmpresa.Create(Application, mdNormal, 0);
//  viewCadastroEmpresa.Parent := pnlScreens;
  CriaToolButton(viewCadastroEmpresa, ac_cadempresas);
//  viewCadastroEmpresa.Show;
end;

procedure TviewPrincipal.ac_cadestadosExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadfornecedoresExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadfuncionariosExecute(Sender: TObject);
begin
{
  if not Assigned(viewCadFuncionario) then
  begin
    viewCadFuncionario	:=  TviewCadFuncionario.Create(Nil, mdNormal, 0);
//    frm_CadFuncionario	:=	TviewCadFuncionario.Create(Self);
    viewCadFuncionario.Show;
    CriaToolButton(TviewCadFuncionario, ac_cadfuncionarios);
  end
  else
  begin
    if (viewCadFuncionario.WindowState in [wsMinimized]) then
      viewCadFuncionario.WindowState := wsNormal
    else
      viewCadFuncionario.Show;
  end;
  }
end;

procedure TviewPrincipal.ac_cadpermissoesExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadplanilhaitemExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadsetoresExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadtransportadorasExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_fercalculadoraExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_fercalendarioExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.acConfiguracoesExecute(Sender: TObject);
begin
  viewConfiguracao := TviewConfiguracao.Create(Application, mdNormal, 0);
//  viewConfiguracao.Parent := pnlScreens;
  CriaToolButton(viewConfiguracao, acConfiguracoes);
//  viewConfiguracao.Show;
end;

procedure TviewPrincipal.ac_fincontasapagarExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_fincontasareceberExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_fercorreioExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.acNotasDeEntradasExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.acSistemaLoginExecute(Sender: TObject);
begin
  try
//  if TLogin.GetInstance.Deslogar = False then
//    MessageDlg('Não foi possível deslogar o usuario. Informe o suporte técnico!', mtError, [mbOk], 0);

    viewLogin := TviewLogin.Create(Self);
    try
      if TLogin.GetInstance.Deslogar = False then
        MessageDlg('Não foi possível deslogar o usuario. Informe o suporte técnico!', mtError, [mbOk], 0);
      if viewLogin.ShowModal <> mrOk then
      begin
        MessageDlg('Você não se logou corretamente. A aplicação será encerrada !',mtInformation,[mbOK],0);
        Application.Terminate;
      end
      else
      begin
        if Utils.LoadLayoutUsuario( TLogin.GetInstance.IDUsuario ) then
          acmAcoes.LoadFromFile(Utils.CaminhoLayout)
        else
          if Utils.LoadLayoutGlobal(TLogin.GetInstance.IDEmpresa) then
            acmAcoes.LoadFromFile(Utils.CaminhoLayout)
          else
            MessageDlg('Não foi possível ler o arquivo de Layout do Usuário! Informe o suporte técnico.', mtWarning, [mbOK], 0);
      end;
    finally
      FreeAndNil(viewLogin);
    end;
  except
    MessageDlg('Erro ao abrir a tela de Login', mtError, [mbOK], 0);
    Application.Terminate;
  end;
end;

procedure TviewPrincipal.ac_fermensagensExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_cadperfilExecute(Sender: TObject);
begin
{
  if not Assigned(viewCadPerfil) then
  begin
    viewCadPerfil :=  TviewCadPerfil.Create(Self, mdNormal, 0, acmAcoes);
    viewCadPerfil.Show;
    CriaToolButton(TviewCadPerfil, ac_cadperfil);
  end
  else
  begin
    if (viewCadPerfil.WindowState in [wsMinimized]) then
      viewCadPerfil.WindowState := wsNormal
    else
      viewCadPerfil.Show;
  end;
  }
end;

procedure TviewPrincipal.acNotasDeSaidasExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.acSistemaSairExecute(Sender: TObject);
begin
  if MessageDlg('Tem certeza que deseja Sair do do sistema?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = mrYes then
  begin
    if TLogin.GetInstance.Deslogar = False then
      MessageDlg('Não foi possível deslogar o usuario. Informe o suporte técnico!', mtError, [mbOk], 0);
    Application.Terminate;
  end;
end;

procedure TviewPrincipal.acPreVendaExecute(Sender: TObject);
begin
  viewPreVenda := TviewPreVenda.Create(Application, mdNormal, 0);
//  viewManutencaoPedidos.Parent := pnlScreens;
  CriaToolButton(viewPreVenda, acPreVenda);
//  viewManutencaoPedidos.Show;
end;

procedure TviewPrincipal.AtivaToolButton(Sender: TObject);
begin
//  if not (Sender is TToolButton) then
//    Exit;
//  if TToolButton(Sender).Owner is TForm then
//    TForm(TToolBar(Sender).Owner).Show;
end;

procedure TviewPrincipal.CriaToolButton(Formulario: TForm; Acao: TAction; TextoAux : String = '');
var
  B, S: TToolButton;
begin
  { Criando botao na ToolButton }
  B := TToolButton.Create(tbnJanelas); {agora sim eu tenho proprietario certo}
  B.Parent := tbnJanelas;
  B.Left := 1000;
  B.ImageIndex := acao.ImageIndex;
  if TextoAux  <> '' then
    B.Caption := acao.Caption + ' ' + TextoAux
  else
  B.Caption := acao.Caption;
  B.Name  := 'btn' + Formulario.Name;
  B.OnClick := OnClickToolButton;
  Formulario.OnDestroy := OnDestroyToolButton;
  Formulario.Parent := pnlScreens;
  Formulario.Show;

  { Criando o separador }
  S := TToolButton.Create(tbnJanelas);
  S.Parent := tbnJanelas;
  S.Name  := 'sp' + Formulario.Name;
  S.Left := 1000;
  S.Style := tbsSeparator;
  s.Width  := 5;
end;

//procedure TviewPrincipal.ctgSearchDocExit(Sender: TObject);
//begin
//  ShowScrollBar(ctgSearchDoc.Handle, SB_VERT, False);
//end;

procedure TviewPrincipal.dlgCustomizacaoClose(Sender: TObject);
begin
  Utils.SalvaLayoutUsuario(acmAcoes, TLogin.GetInstance.IDUsuario);
end;

procedure TviewPrincipal.ac_helpsobreExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.acLogDUEExecute(Sender: TObject);
begin
  viewDUE := TviewDUE.Create(Application, mdNormal, 0);
//  viewManutencaoDue.Parent := pnlScreens;
  CriaToolButton(viewDUE, acLogDUE);
//  viewManutencaoDue.Show;
end;

procedure TviewPrincipal.ac_fertecladovirtualExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.ac_fintransferenciasExecute(Sender: TObject);
begin
//
end;

procedure TviewPrincipal.FormCreate(Sender: TObject);
var
  MyHint : TMyHintWindow;
begin
  { Após fazer a tela de login retirar o SetSecao }
  //TLogin.GetInstance.SetSecao('SGE');
  acSistemaLogin.Execute;

  popSalvarComoPadrao.Visible := TLogin.GetInstance.IsMaster;

  MyHint := TMyHintWindow.Create(Self);

//  ShowScrollbar(ctgSearchDoc.Handle, SB_BOTH, false);

  Align := AlNone;
  AutoSize := False;
  WindowState := wsNormal;
  Top := 0;
  Left := 0;
  Width := Screen.Width;
  Height := Screen.Height - Utils.AlturaBarraTarefas;

//  dsSearchDoc.DataSet := Utils.SearchDoc(1,'');
//  ctgSearchDoc.RowCount := ((spvSearchDoc.Height - pnlSearchDoc.Height) div 68);
//  ShowScrollBar(ctgSearchDoc.Handle, SB_VERT, False);
end;

procedure TviewPrincipal.FormShow(Sender: TObject);
begin
  lblUserName.Caption := TLogin.GetInstance.Usuario;
  pnlScreenCaption.Caption := '  ' + TConfig.GetInstance.AppName + ' [' + TConfig.GetInstance.Versao + ']';
  lblBusinessName.Caption := TLogin.GetInstance.Empresa;
  //raise Exception.Create('Erro gerado para teste!');
end;

procedure TviewPrincipal.imgAppCloseClick(Sender: TObject);
begin
  acSistemaSair.Execute;
end;

procedure TviewPrincipal.imgAppMinimizedClick(Sender: TObject);
begin
  Application.Minimize;
end;

procedure TviewPrincipal.imgFerramentaClick(Sender: TObject);
begin
  if spvToolBar.Opened then
    spvToolBar.Close
  else
    spvToolBar.Open;
end;

procedure TviewPrincipal.imgUserClick(Sender: TObject);
begin
  acSistemaLogin.Execute;
end;

procedure TviewPrincipal.OnClickToolButton(Sender: TObject);
var
  NomeFormulario : String;
begin
  NomeFormulario := TToolButton(Sender).Name;
  NomeFormulario := Trim(Copy(NomeFormulario, 4, Length(NomeFormulario)));
  TForm(Application.FindComponent(NomeFormulario)).WindowState := wsMaximized;
  TForm(Application.FindComponent(NomeFormulario)).SetFocus;
  TForm(Application.FindComponent(NomeFormulario)).Show;
end;

procedure TviewPrincipal.OnDestroyToolButton(Sender: TObject);
begin
  tbnJanelas.FindComponent('btn' + TForm(Sender).Name).Destroy;
  tbnJanelas.FindComponent('sp' + TForm(Sender).Name).Destroy;
end;

procedure TviewPrincipal.popPersonalizarBarradeFerramentasClick(Sender: TObject);
begin
  dlgCustomizacao.Show;
end;

procedure TviewPrincipal.popRestaurardoPadraoClick(Sender: TObject);
begin
  if Utils.LoadLayoutGlobal( TLogin.GetInstance.IDEmpresa ) then
    acmAcoes.LoadFromFile(Utils.CaminhoLayout);
end;

procedure TviewPrincipal.popSalvarComoPadraoClick(Sender: TObject);
begin
  Utils.SalvaLayoutGlobal(acmAcoes, TLogin.GetInstance.IDEmpresa);
end;

procedure TviewPrincipal.tobToolDocClick(Sender: TObject);
begin
  cpnToolBar.ActiveCardIndex := 0;
end;

procedure TviewPrincipal.tobToolMailsClick(Sender: TObject);
begin
  cpnToolBar.ActiveCardIndex := 1;
end;

procedure TviewPrincipal.txtSearchDocPedidoClick(Sender: TObject);
begin
//  ShowMessage('ID do Pedido : ' + IntToStr(dsSearchDoc.DataSet.FieldByName('ID_PEDIDO').AsInteger));
end;

{ TMyHintWindow }

constructor TMyHintWindow.Create(AOwner: TComponent);
begin
  inherited;
  Self.BiDiMode := bdRightToLeft;
end;

destructor TMyHintWindow.Destroy;
begin

  inherited;
end;

end.
