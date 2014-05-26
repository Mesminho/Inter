<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="SelecionarQuestionario.aspx.cs" Inherits="paginas_SelecionarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label ID="lblInfo" runat="server" Text="Escolha um tipo de questionário para aplicar: " CssClass="textoCorrido"></asp:Label>
    <div id="lista">
        <ul>
            <li><a href="Questionario.aspx">
                <img class="tipoQuestionario" id="investidor" alt="Perfil Investidor" src="../images/perfil_investidor.jpg" /><br />
                Investidor</a>
            </li>
            <li>
                <img class="tipoQuestionario" id="educacao" alt="Educação Financeira" src="../images/educacao_financeira.jpg" /><br />
                Educação Financeira</li>
        </ul>

    </div>
</asp:Content>

