<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CriarClassificacao.aspx.cs" Inherits="paginas_CriarClassificacao" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="tabela">
    <tr>
        <td class="auto-style2" colspan="2">
            <asp:Label ID="lblInfo" runat="server" CssClass="textoCorrido" Text="Cadastre uma classificação para o questionário de Educação Financeira:"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
    <asp:Label ID="lblClassificacao" runat="server" Text="Classificação: " CssClass="texto"></asp:Label>
        </td>
        <td class="auto-style3">

    <textarea id="txtClassificacao" cols="20" name="S1" rows="1" class="txtArea" runat="server" required="" title="Descreva a classificação"></textarea></td>
    </tr>
    <tr>
        <td class="auto-style4">
    <asp:Label ID="lblPontuacao" runat="server" CssClass="texto" Text="Pontuação: "></asp:Label>
        </td>
        <td class="auto-style5">
            <input type="number" required="" max="9000" min="1" id="txtPontuacao" runat="server" title="Valoração máxima para a classificação"/></td>
    </tr>
    </table>

    <input type="button" value="Cancelar" class="btn-cancelar" onclick="location.href = 'Home.aspx'"/>
    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar Classificação" CssClass="botao" OnClick="btnCadastrar_Click"/>
    <asp:Button ID="btnAvancar" runat="server" Text="Avançar" CssClass="botao" OnClick="btnAvancar_Click"/>

</asp:Content>