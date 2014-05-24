<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="SelecaoEstatistica.aspx.cs" Inherits="paginas_SelecaoEstatistica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tabela">
        <tr>
            <td class="tabela">
                <asp:Label ID="lbl_basePesquisa" runat="server" Text="Base da Pesquisa:" CssClass="texto"></asp:Label>
            </td>
            <td class="auto-style5" colspan="3">
                <asp:DropDownList ID="ddl_tipoPesquisa" runat="server" CssClass="DDList">
                    <asp:ListItem>Pontuaçao</asp:ListItem>
                    <asp:ListItem>Respostas</asp:ListItem>
                    <asp:ListItem>Tipos de Investidor</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="tabela">
                <asp:Label ID="lbl_comparacao" runat="server" Text="Comparação de dados:" CssClass="texto"></asp:Label>
            </td>
            <td class="auto-style5" colspan="3">
                <asp:DropDownList ID="ddl_comparacao" runat="server" CssClass="DDList">
                    <asp:ListItem>Idade</asp:ListItem>
                    <asp:ListItem>Tipo de Visitante</asp:ListItem>
                    <asp:ListItem>Semestre do Aluno</asp:ListItem>
                    <asp:ListItem>Semestre</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="tabela">
                <asp:Label ID="lbl_evento" runat="server" Text="Período:" CssClass="texto"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:DropDownList ID="ddl_eventoInicio" runat="server" CssClass="DDList">
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style7">
                <asp:Label ID="lblA" runat="server" Text="a" CssClass="texto"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="ddl_eventoFim" runat="server" CssClass="DDList">
                    <asp:ListItem>2010</asp:ListItem>
                    <asp:ListItem>2011</asp:ListItem>
                    <asp:ListItem>2012</asp:ListItem>
                    <asp:ListItem>2013</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" CssClass="botao" />
    <br />

</asp:Content>

