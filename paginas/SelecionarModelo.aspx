<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="SelecionarModelo.aspx.cs" Inherits="paginas_SelecionarModelo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <asp:Label ID="lblInfo" runat="server" Text="Escolha o tipo de questionário que deseja criar: " CssClass="textoCorrido"></asp:Label>
    <div id="lista">
        <ul>
            <li><a href="CriarModelo.aspx">
                <img class="tipoQuestionario" id="investidor" alt="Perfil Investidor" src="../images/perfil_investidor.jpg" /><br />
                Investidor</a>
            </li>
            <li>
                <img class="tipoQuestionario" id="educacao" alt="Educação Financeira" src="../images/educacao_financeira.jpg" /><br />
                Educação Financeira</li>
        </ul>

    </div>
</asp:Content>

