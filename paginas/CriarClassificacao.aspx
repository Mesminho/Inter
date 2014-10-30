<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CriarClassificacao.aspx.cs" Inherits="paginas_CriarClassificacao" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        aside {
            float: left;
            height: auto;
            left: -50px;
            margin-bottom: 25px;
            margin-right: 5px;
            margin-left: 15px;
            margin-top: 25px;
            padding-left: 15px;
            border-left: 1px solid #000;
        }

        section {
            float: left;
            width: auto;
            display: table;
            margin-bottom: 20px;
            margin-left: 20px;
            margin-right: 10px;
            margin-top: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section>
        <asp:Label ID="lblInfo" runat="server" CssClass="textoCorrido" Text="Cadastre uma classificação para o questionário de Educação Financeira:"></asp:Label>

        <table class="tabela">
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
                    <asp:Label ID="lblInfo2" runat="server" CssClass="textoCorrido" Text="Indique a pontuação máxima para a classificação:"></asp:Label>
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
    </section>
    <aside>
        <asp:Label ID="lblInfoCadastros" runat="server" CssClass="textoCorrido" Text="Classificações já cadastradas:"></asp:Label>
        <div style="margin-right: 20px">
            <asp:Label ID="Tabela" runat="server" Text="Label"></asp:Label>
        </div>
    </aside>


    <div style="clear: both;">
        <input type="button" value="Cancelar" class="btn-cancelar" onclick="location.href = 'Home.aspx'" />
        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar Classificação" CssClass="botao" OnClick="btnCadastrar_Click" />
        <span onclick="return confirm('Deseja finalizar a criação de classificações?')">
            <asp:Button ID="btnAvancar" runat="server" Text="Avançar" CssClass="botao" OnClick="btnAvancar_Click" />
        </span>
    </div>
</asp:Content>
