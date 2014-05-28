<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="SelecionarVisitante.aspx.cs" Inherits="paginas_SelecionarVisitante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Autenticação do visitante " CssClass="texto"></asp:Label><br />
    <asp:Label ID="lbl" runat="server" Text="Informe os dados do visitante para aplicar o questionário: " CssClass="textoCorrido"></asp:Label>
    <table class="tabela">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblNome" runat="server" Text="Nome: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtNome" runat="server" CssClass="caixaTexto" Width="200" title="Digite o nome do visitante"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="textoAlerta" ErrorMessage="É necessário prencher o campo." ControlToValidate="txtNome"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" CssClass="texto" Text="E-mail: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="caixaTexto" Width="200" title="Digite o e-mail do visitante"></asp:TextBox>
                *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="textoAlerta" ErrorMessage="É necessário prencher o campo." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <asp:Button ID="btnContinuar" runat="server" Text="Continuar" CssClass="botao" OnClick="btnContinuar_Click" />
    

</asp:Content>

