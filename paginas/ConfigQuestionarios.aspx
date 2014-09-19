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
                <asp:Button ID="btnFechar1" CssClass="fechar" runat="server" Text="X" />
                <asp:Label ID="LblInvestidor" Text="Configuração questionário Perfil de Investidor" runat="server" CssClass="titulo"></asp:Label>
            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalInvestidor"
                TargetControlID="btnInvestidor"
                PopupControlID="PanelInvestidor"
                OkControlID="btnFechar1"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>

            <asp:Panel ID="PanelEducacao" runat="server" CssClass="pnl">
                <asp:Button ID="btnFechar2" CssClass="fechar" runat="server" Text="X" />
                <asp:Label ID="lblEd" Text="Configuração questionário Educação Financeira" runat="server" CssClass="titulo"></asp:Label>
            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalEd"
                TargetControlID="btnEducacao"
                PopupControlID="PanelEducacao"
                OkControlID="btnFechar2"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>

            <asp:Panel ID="PanelEmpresarial" runat="server" CssClass="pnl">
                <asp:Button ID="btnFechar3" CssClass="fechar" runat="server" Text="X" />
                <asp:Label ID="lblEmpresarial" Text="Configuração questionário Empresarial" runat="server" CssClass="titulo"></asp:Label>
            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalEmpresarial"
                TargetControlID="btnEmpresarial"
                PopupControlID="PanelEmpresarial"
                OkControlID="btnFechar3"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>





        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

