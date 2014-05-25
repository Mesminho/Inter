<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CriarModelo.aspx.cs" Inherits="paginas_CriarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label ID="lblInfo" runat="server" Text="Crie um novo modelo de questionário:" CssClass="textoCorrido"></asp:Label>
    <table class="tabela">
    <tr>
        <td class="auto-style2">
    <asp:Label ID="lbl_nomeModelo" runat="server" Text="Nome do Modelo: " CssClass="texto"></asp:Label>
        </td>
        <td class="auto-style3">
    <asp:TextBox ID="txb_nomeModelo" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="caixaTexto" Width="258px"></asp:TextBox>
        </td>
        <td>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="textoAlerta" runat="server" ErrorMessage="Preenchimento Obrigatório" ControlToValidate="txb_nomeModelo"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
    <asp:Label ID="lbl_nomeEvento" runat="server" CssClass="texto" Text="Nome do Evento: "></asp:Label>
        </td>
        <td class="auto-style5">
    <asp:DropDownList ID="ddl_nomeEvento" CssClass="caixaTexto" runat="server">
        <asp:ListItem Value="2010">2010</asp:ListItem>
        <asp:ListItem>2011</asp:ListItem>
        <asp:ListItem>2012</asp:ListItem>
        <asp:ListItem>2013</asp:ListItem>
        <asp:ListItem>2014</asp:ListItem>
    </asp:DropDownList>
        </td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblPontuacaoMax" runat="server" Text="Pontuação Máxima: " CssClass="texto"></asp:Label>

        </td>
        <td class="auto-style3">

            <asp:TextBox ID="txtPontuacaoMax" runat="server" Width="48px" CssClass="caixaTexto"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
    <asp:Label ID="lbl_descricao" runat="server" CssClass="texto" Text="Descrição: "></asp:Label>

        </td>
        <td class="auto-style3">

    <textarea id="txt_descricao" cols="20" name="S1" rows="1" class="txtArea"></textarea></td>
        <td>&nbsp;</td>
    </tr>
</table>
    <br />
    <br />
    <br />

    <br />

    <asp:Button ID="btn_continuar" runat="server" Text="Continuar" CssClass="botao" OnClick="btn_continuar_Click" />
    <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" CssClass="botao" OnClick="btn_cancelar_Click" />

</asp:Content>

