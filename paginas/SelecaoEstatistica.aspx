<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="SelecaoEstatistica.aspx.cs" Inherits="paginas_SelecaoEstatistica" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="lbl_basePesquisa" runat="server" Text="Base da Pesquisa:"></asp:Label>
    <asp:DropDownList ID="ddl_tipoPesquisa" runat="server">
        <asp:ListItem>Pontuaçao</asp:ListItem>
        <asp:ListItem>Respostas</asp:ListItem>
        <asp:ListItem>Tipos de Investidor</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="lbl_comparacao" runat="server" Text="Comparação de dados:"></asp:Label>
    <asp:DropDownList ID="ddl_comparacao" runat="server">
        <asp:ListItem>Idade</asp:ListItem>
        <asp:ListItem>Tipo de Visitante</asp:ListItem>
        <asp:ListItem>Semestre do Aluno</asp:ListItem>
        <asp:ListItem>Semestre</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="lbl_evento" runat="server" Text="Evento:"></asp:Label>
    <asp:DropDownList ID="ddl_eventoInicio" runat="server">
        <asp:ListItem>2010</asp:ListItem>
        <asp:ListItem>2011</asp:ListItem>
        <asp:ListItem>2012</asp:ListItem>
        <asp:ListItem>2013</asp:ListItem>
    </asp:DropDownList>
    <asp:DropDownList ID="ddl_eventoFim" runat="server">
        <asp:ListItem>2010</asp:ListItem>
        <asp:ListItem>2011</asp:ListItem>
        <asp:ListItem>2012</asp:ListItem>
        <asp:ListItem>2013</asp:ListItem>
    </asp:DropDownList>
    <br />
<asp:Button ID="btnConfirmar" runat="server" OnClick="btnConfirmar_Click" Text="Confirmar" />
    <br />

</asp:Content>

