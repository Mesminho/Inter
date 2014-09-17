<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfigQuestionarios.aspx.cs" Inherits="paginas_ConfigQuestionarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="lblInfo" runat="server" Text="Selecione um determinado questionário para alterar suas configurações: " CssClass="textoCorrido"></asp:Label>


    <div class="linha">
        <div class="bloco">
            <a href="#investidor" rel="modal">
                <img class="tipoQuestionario" alt="Perfil Investidor" src="../images/perfil_investidor.jpg" /><br />
                Investidor</a>

        </div>
        <div class="bloco">
            <a href="#educacao" rel="modal">
                <img class="tipoQuestionario" alt="Educação Financeira" src="../images/educacao_financeira.jpg" /><br />
                Educação Financeira</a>
        </div>
        <div class="bloco">
            <a href="#empresarial" rel="modal">
                <img class="tipoQuestionario" alt="Empresarial" src="../images/perfil_empresarial.jpg" /><br />
                Empresarial</a>
        </div>


    </div>

    <div class="janela" id="investidor">
        <button class="fechar" type="button">X</button>
        <asp:Label ID="lblInvestidor" Text="Configuração questionário perfil investidor" runat="server" CssClass="titulos"></asp:Label>

    </div>

    <div class="janela" id="educacao">
        <button class="fechar" type="button">X</button>
        <asp:Label ID="Label1" Text="Configuração questionário educação financeira" runat="server" CssClass="titulos"></asp:Label>

    </div>
    <div class="janela" id="empresarial">
        <button class="fechar" type="button">X</button>
        <asp:Label ID="Label2" Text="Configuração questionário empresarial" runat="server" CssClass="titulos"></asp:Label>

    </div>
    <!-- mascara para cobrir o site -->
    <div id="mascara"></div>

</asp:Content>

