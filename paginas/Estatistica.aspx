<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Estatistica.aspx.cs" Inherits="paginas_Estatistica" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label ID="lbl_selecao" runat="server" Text="Selecione o tipo de pesquisa" CssClass="texto"></asp:Label>
    <asp:DropDownList ID="ddl_pesquisa" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem Selected="True">None</asp:ListItem>
        <asp:ListItem Value="0">Classificação</asp:ListItem>
        <asp:ListItem Value="1">Idade</asp:ListItem>
        <asp:ListItem Value="2">Semestre</asp:ListItem>
    </asp:DropDownList>
    <br/>
    <div id="grafico">
        <asp:Literal ID="ltl_chart" runat="server"></asp:Literal></div>


</asp:Content>

