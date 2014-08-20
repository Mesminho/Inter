<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CriarModelo.aspx.cs" Inherits="paginas_CriarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <table class="tabela">
        <tr>
            <td class="auto-style2" colspan="3">
                <asp:Label ID="lblInfo" runat="server" CssClass="textoCorrido" Text="Crie um novo modelo de questionário para análise de perfil de investidor:"></asp:Label>
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
                </asp:DropDownList>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="lbl_descricao" runat="server" CssClass="texto" Text="Descrição: "></asp:Label>

            </td>
            <td class="auto-style5">

                <textarea id="txt_descricao" cols="20" name="S1" rows="1" class="txtArea" runat="server"></textarea></td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="3">
                <asp:Label ID="lblPontuacaoMax" runat="server" Text="Informe a pontuação máxima para cada perfil de investidor: " CssClass="textoCorrido"></asp:Label>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPontuacaoConservador" runat="server" Text="Perfil Conservador: " CssClass="texto"></asp:Label>

            </td>
            <td>
                <input id="txtPontuacaoConservador" type="number" required="" max="9000" min="1" name="Pontuacao" runat="server" title="Pontuação máxima para definir o perfil conservador" css="caixaTexto" />

            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvConservador" CssClass="textoAlerta" runat="server" ErrorMessage="Preenchimento Obrigatório" ControlToValidate="txtPontuacaoConservador"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPontuacaoModerado" runat="server" Text="Perfil Moderado: " CssClass="texto"></asp:Label>

            </td>
            <td>
                <input id="txtPontuacaoModerado" type="number" required="" max="9000" min="1" name="Pontuacao" runat="server" title="Pontuação máxima para definir o perfil moderado" css="caixaTexto" />

            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvModerado" CssClass="textoAlerta" runat="server" ErrorMessage="Preenchimento Obrigatório" ControlToValidate="txtPontuacaoModerado"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPontuacaoAgressivo" runat="server" Text="Perfil Agressivo: " CssClass="texto"></asp:Label>

            </td>
            <td>
                <input id="txtPontuacaoAgressivo" type="number" required="" max="9000" min="1" name="Pontuacao" runat="server" title="Pontuação máxima para definir o perfil agressivo" css="caixaTexto"/>

            </td>
            <td >
                <asp:RequiredFieldValidator ID="rfvAgressivo" CssClass="textoAlerta" runat="server" ErrorMessage="Preenchimento Obrigatório" ControlToValidate="txtPontuacaoAgressivo"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />

    <br />

    <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" CssClass="botao" OnClick="btn_cancelar_Click" />

    <asp:Button ID="btn_continuar" runat="server" Text="Continuar" CssClass="botao" OnClick="btn_continuar_Click" />

</asp:Content>

