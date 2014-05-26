<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="SelecionarVisitante.aspx.cs" Inherits="paginas_SelecionarVisitante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label ID="lbl" runat="server" Text="Informações do visitante: " CssClass="textoCorrido"></asp:Label>
    <table class="tabela">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblNome" runat="server" Text="Nome: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNome" runat="server" CssClass="caixaTexto" Width="200"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" CssClass="texto" Text="E-mail: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="caixaTexto" Width="200"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnContinuar" runat="server" Text="Continuar" CssClass="botao" OnClick="btnContinuar_Click" />
    

</asp:Content>

