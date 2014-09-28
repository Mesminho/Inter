<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CriarClassificacao.aspx.cs" Inherits="paginas_CriarClassificacao" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table class="tabela">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblInfo" runat="server" CssClass="textoCorrido" Text="Cadastre uma classificação para o questionário de Educação Financeira:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTitulo" runat="server" Text="Título: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTitulo" required="" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="lblClassificacao" runat="server" Text="Classificação: " CssClass="texto"></asp:Label>
            </td>
            <td >

                <textarea id="txtClassificacao" cols="20" name="S1" rows="1" class="txtArea" runat="server" required="" title="Descreva a classificação"></textarea></td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblInfo2" runat="server" CssClass="textoCorrido" Text="Indique a pontuação máxima para a classificação:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPontuacao" runat="server" CssClass="texto" Text="Pontuação: "></asp:Label>
            </td>
            <td>
                <input type="number" required="" max="9000" min="1" id="txtPontuacao" runat="server" title="Valoração máxima para a classificação" /></td>
        </tr>
    </table>

    <input type="button" value="Cancelar" class="btn-cancelar" onclick="location.href = 'Home.aspx'" />
    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar Classificação" CssClass="botao" OnClick="btnCadastrar_Click" />
    <asp:Button ID="btnAvancar" runat="server" Text="Avançar" CssClass="botao" OnClick="btnAvancar_Click" />

</asp:Content>
