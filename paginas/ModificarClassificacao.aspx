<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ModificarClassificacao.aspx.cs" Inherits="paginas_ModificarClassificacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table class="tabela">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblInfo" runat="server" CssClass="textoCorrido" Text="Modifique a classificação do questionário:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTitulo" runat="server" Text="Título: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTitulo" required="" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTitulo" runat="server" ControlToValidate="txtTitulo" ErrorMessage=""></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblClassificacao" runat="server" Text="Classificação: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <textarea id="txtClassificacao" cols="20" name="S1" rows="1" class="txtArea" runat="server" required="" title="Descreva a classificação"></textarea>
                <asp:RequiredFieldValidator ID="rfvClassificacao" runat="server" ControlToValidate="txtClassificacao" ErrorMessage=""></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblInfo2" runat="server" CssClass="textoCorrido" Text="Modifique a pontuação máxima para a classificação:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPontuacao" runat="server" CssClass="texto" Text="Pontuação: "></asp:Label>
            </td>
            <td>
                <input type="number" required="" max="9000" min="1" id="txtPontuacao" runat="server" title="Valoração máxima para a classificação" />
                <asp:RegularExpressionValidator ID="revPontosMax" runat="server" ControlToValidate="txtPontuacao" ErrorMessage="" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="rfvPontosMax" runat="server" ControlToValidate="txtPontuacao" ErrorMessage=""></asp:RequiredFieldValidator>

            </td>
        </tr>
    </table>

    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn-cancelar" />
    <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" CssClass="botao" />


</asp:Content>

