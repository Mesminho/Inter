<%@ Page Title="" Language="VB" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="false" CodeFile="CriarClassificacao.aspx.vb" Inherits="CriarClassificacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="tabela">
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Label ID="lblInfo" runat="server" CssClass="textoCorrido" Text="Cadastre uma classificação para o questionário de Educação Financeira:"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
    <asp:Label ID="lblClassificacao" runat="server" Text="Classificação: " CssClass="texto"></asp:Label>
        </td>
        <td class="auto-style3">

    <textarea id="txtClassificacao" cols="20" name="S1" rows="1" class="txtArea" runat="server"></textarea></td>
        <td>
    <asp:RequiredFieldValidator ID="rfvClassificacao" CssClass="textoAlerta" runat="server" ErrorMessage="Preenchimento Obrigatório" ControlToValidate="txtClassificacao"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
    <asp:Label ID="lblPontuacao" runat="server" CssClass="texto" Text="Pontuação: "></asp:Label>
        </td>
        <td class="auto-style5">
            <input type="number" required="" max="9000" min="1" name="Pontuacao" runat="server"/></td>
        <td class="auto-style6"></td>
    </tr>
    </table>

    <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" CssClass="botao" />
    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar Classificação" CssClass="botao" />
    
</asp:Content>

