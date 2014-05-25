<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="SelecionarVisitante.aspx.cs" Inherits="paginas_SelecionarVisitante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <table class="tabela">
        <tr>
            <td>
                <asp:Label ID="lblNome" runat="server" Text="Nome: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNome" runat="server" CssClass="caixaTexto" Width="200"></asp:TextBox>
            </td>
        </tr>
        </table>
    <asp:Button ID="btnContinuar" runat="server" Text="Continuar" CssClass="botao" OnClick="btnContinuar_Click" />

</asp:Content>

