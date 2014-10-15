<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfigQuestionarios.aspx.cs" Inherits="paginas_ConfigQuestionarios" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="upPAnel" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Selecione um determinado questionário para alterar suas configurações: " CssClass="textoCorrido"></asp:Label>


            <div class="linha">
                <div class="bloco">
                    <asp:ImageButton ID="btnInvestidor" ImageUrl="~/images/perfil_investidor.jpg" runat="server" CssClass="tipoQuestionario" AlternateText="Perfil Investidor" OnClick="btnInvestidor_Click" />
                    <br />
                    Investidor
               
                </div>
                <div class="bloco">
                    <asp:ImageButton ID="btnEducacao" ImageUrl="~/images/educacao_financeira.jpg" runat="server" CssClass="tipoQuestionario" AlternateText="Educação Financeira" OnClick="btnEducacao_Click" />
                    <br />
                    Educação Financeira
               
                </div>
                <div class="bloco">
                    <asp:ImageButton ID="btnEmpresarial" ImageUrl="~/images/perfil_empresarial.jpg" runat="server" CssClass="tipoQuestionario" AlternateText="Empresarial" OnClick="btnEmpresarial_Click" />
                    <br />
                    Empresarial
               
                </div>
            </div>

            <asp:Panel ID="PanelInvestidor" runat="server" CssClass="pnl">
                <button runat="server" id="btnFechar1" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>
                <asp:Label ID="LblInvestidor" Text="Configuração dos questionários - Perfil de Investidor" runat="server" CssClass="titulo"></asp:Label>
                <asp:Accordion
                    ID="accordion"
                    CssClass="accordion"
                    HeaderCssClass="accordionHeader"
                    HeaderSelectedCssClass="accordionHeaderSelected"
                    ContentCssClass="accordionContent"
                    runat="server">
                    <Panes>
                        <asp:AccordionPane ID="acc1" runat="server">
                            <Header>Habilitar e Desabilitar</Header>
                            <Content>

                                <asp:GridView ID="grvQ" runat="server" AutoGenerateColumns="false"
                                    PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt"
                                    CssClass="Grid" AllowPaging="true" PageSize="5" PageIndex="0" OnPageIndexChanging="grvQ_PageIndexChanging">
                                    <Columns>
                                        <asp:BoundField DataField="mod_nome" HeaderText="Modelo do Questionário" />
                                        <asp:BoundField DataField="mod_descricao" HeaderText="Descrição" />
                                    </Columns>
                                </asp:GridView>
                                <br />
                                <asp:Label ID="lblTotal" runat="server" CssClass="newStyle2" Visible="false"></asp:Label>
                                <asp:Button ID="Teste" CssClass="botao" runat="server" Text="Button" OnClick="btn_falso_Click" />
                            </Content>
                        </asp:AccordionPane>
                        <asp:AccordionPane ID="AccordionPane1" runat="server">
                            <Header>Editar</Header>
                            <Content>

                                <asp:GridView ID="grvQ2" runat="server" AutoGenerateColumns="false"
                                    PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt"
                                    CssClass="Grid">
                                    <Columns>
                                        <asp:BoundField DataField="mod_nome" HeaderText="Modelo do Questionário" />
                                        <asp:BoundField DataField="mod_descricao" HeaderText="Descrição" />
                                    </Columns>
                                </asp:GridView>
                                <br />
                                <asp:Label ID="Label2" runat="server" CssClass="newStyle2" Visible="false"></asp:Label>

                            </Content>
                        </asp:AccordionPane>
                    </Panes>

                </asp:Accordion>
            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalInvestidor"
                TargetControlID="btnInvestidor"
                PopupControlID="PanelInvestidor"
                OkControlID="btnFechar1"
                BackgroundCssClass="modalBackground" 
             >
            </asp:ModalPopupExtender>

            <asp:Panel ID="PanelEducacao" runat="server" CssClass="pnl">
                <button runat="server" id="btnFechar2" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>
                <asp:Label ID="lblEd" Text="Configuração dos questionários - Educação Financeira" runat="server" CssClass="titulo"></asp:Label>
            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalEd"
                TargetControlID="btnEducacao"
                PopupControlID="PanelEducacao"
                OkControlID="btnFechar2"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>

            <asp:Panel ID="PanelEmpresarial" runat="server" CssClass="pnl">
                <button runat="server" id="btnFechar3" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>
                <asp:Label ID="lblEmpresarial" Text="Configuração dos questionários - Empresarial" runat="server" CssClass="titulo"></asp:Label>
            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalEmpresarial"
                TargetControlID="btnEmpresarial"
                PopupControlID="PanelEmpresarial"
                OkControlID="btnFechar3"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>


            <!--Modal para descrição do questionario-->
            <asp:Panel ID="PanelDesc" runat="server" CssClass="pnl">
                <button runat="server" id="btnFechar4" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>
                <asp:Label ID="Label3" Text="Descrição do questionário" runat="server" CssClass="titulo"></asp:Label>


            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalPopupExtenderDesc"
                TargetControlID="btn_falso"
                PopupControlID="PanelDesc"
                OkControlID="btnFechar4"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>
            <asp:Button ID="btn_falso" runat="server" Text="" OnClick="btn_falso_Click" Style="border: none; background-color: #fff" Enabled="false" />



        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

