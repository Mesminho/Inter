<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CriarModelo.aspx.cs" Inherits="paginas_CriarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
    <table class="tabela">
    <tr>
        <td class="auto-style2" colspan="3">
            <asp:Label ID="lblInfo" runat="server" CssClass="textoCorrido" Text="Crie um novo modelo de questionário:"></asp:Label>
        </td>
    </tr>
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
        <td class="auto-style4">
    <asp:Label ID="lbl_descricao" runat="server" CssClass="texto" Text="Descrição: "></asp:Label>

        </td>
        <td class="auto-style5">

    <textarea id="txt_descricao" cols="20" name="S1" rows="1" class="txtArea"></textarea></td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" colspan="3">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" colspan="3">
            <asp:Label ID="lblPontuacaoMax" runat="server" Text="Informe a pontuação máxima para cada perfil de investidor: " CssClass="textoCorrido"></asp:Label>

        </td>
    </tr>
    <tr>
        <td >
            <asp:Label ID="lblPontuacaoConservador" runat="server" Text="Perfil Conservador: " CssClass="texto"></asp:Label>

        </td>
        <td >

            <asp:TextBox ID="txtPontuacaoConservador" runat="server" Width="48px" CssClass="caixaTexto"></asp:TextBox>
        </td>
        <td ></td>
    </tr>
    <tr>
        <td >
            <asp:Label ID="lblPontuacaoModerado" runat="server" Text="Perfil Moderado: " CssClass="texto"></asp:Label>

        </td>
        <td>

            <asp:TextBox ID="txtPontuacaoModerado" runat="server" Width="48px" CssClass="caixaTexto"></asp:TextBox>
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="lblPontuacaoAgressivo" runat="server" Text="Perfil Agressivo: " CssClass="texto"></asp:Label>

        </td>
        <td class="auto-style1">

            <asp:TextBox ID="txtPontuacaoAgressivo" runat="server" Width="48px" CssClass="caixaTexto"></asp:TextBox>
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
    </table>
    <br />
    <br />
    <br />

    <br />

    <asp:Button ID="btn_continuar" runat="server" Text="Continuar" CssClass="botao" OnClick="btn_continuar_Click" />
    <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" CssClass="botao" OnClick="btn_cancelar_Click" />

</asp:Content>

