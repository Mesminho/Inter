<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CriarPerguntaEmpresarial.aspx.cs" Inherits="paginas_CriarPerguntaEmpresarial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="tabela">
        <tr>
            <td>
                <asp:Label ID="lblModelo" runat="server" Text="Modelo: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lbl_nomeQuestionario" runat="server" CssClass="textoCorrido"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_nomeQuestao" runat="server" Text="Título da Questão: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <input type="text" required="" id="txb_nomePergunta" runat="server" style="width: 220px;" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTipoPergunta" runat="server" Text="Tipo da Questão: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlTipoPergunta" runat="server" AutoPostBack="true">
                    <asp:ListItem Text="Selecione" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Multipla Escolha" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Dissertativa" Value="2"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
    </table>



</asp:Content>

