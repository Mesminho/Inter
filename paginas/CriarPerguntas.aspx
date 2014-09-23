<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="CriarPerguntas.aspx.cs" Inherits="paginas_CriarPerguntaEd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script>
        function msgNovaQuestao() {
            alert("Questão adicionada com sucesso.");
        }

    </script>
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
                <input type="text" required="" id="txb_nomePergunta" runat="server" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="TextBoxContainer">
                    <asp:Label ID="lbl_alter1" runat="server" Text="Alternativa 1"></asp:Label>
                    <input type="text" required="" id="txb_alter1" runat="server" />
                    <asp:Label ID="lbl_pontos1" runat="server" Text="Pontos"></asp:Label>
                    <input id="txb_pontos1" type="number" required="" max="9000" min="0" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                    <br />
                    <asp:Label ID="lbl_alter2" runat="server" Text="Alternativa 2"></asp:Label>
                    <input type="text" required="" id="txb_alter2" runat="server" />
                    <asp:Label ID="lbl_pontos2" runat="server" Text="Pontos"></asp:Label>
                    <input id="txb_pontos2" type="number" required="" max="9000" min="0" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                    <br />
                    <asp:Label ID="lbl_alter3" runat="server" Text="Alternativa 3"></asp:Label>
                    <input type="text" id="txb_alter3" runat="server" />
                    <asp:Label ID="lbl_pontos3" runat="server" Text="Pontos"></asp:Label>
                    <input id="txb_pontos3" type="number" max="9000" min="0" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                    <br />
                    <asp:Label ID="lbl_alter4" runat="server" Text="Alternativa 4"></asp:Label>
                    <input type="text" id="txb_alter4" runat="server" />
                    <asp:Label ID="lbl_pontos4" runat="server" Text="Pontos"></asp:Label>
                    <input id="txb_pontos4" type="number" max="9000" min="0" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                    <br />
                    <asp:Label ID="lbl_alter5" runat="server" Text="Alternativa 5"></asp:Label>
                    <input type="text" id="txb_alter5" runat="server" />
                    <asp:Label ID="lbl_pontos5" runat="server" Text="Pontos"></asp:Label>
                    <input id="txb_pontos5" type="number" max="9000" min="0" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                    <br />
                    <asp:Label ID="lbl_alter6" runat="server" Text="Alternativa 6"></asp:Label>
                    <input type="text" id="txb_alter6" runat="server" />
                    <asp:Label ID="lbl_pontos6" runat="server" Text="Pontos"></asp:Label>
                    <input id="txb_pontos6" type="number" max="9000" min="0" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                    <br />
                    <asp:Label ID="lbl_alter7" runat="server" Text="Alternativa 7"></asp:Label>
                    <input type="text" id="txb_alter7" runat="server" />
                    <asp:Label ID="lbl_pontos7" runat="server" Text="Pontos"></asp:Label>
                    <input id="txb_pontos7" type="number" max="9000" min="0" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                </div>
            </td>
        </tr>
    </table>

    <br />
    <input type="button" value="Cancelar" class="btn-cancelar" onclick="cancelar()" />
    <asp:Button ID="btn_novo" runat="server" Text="Nova Questão" CssClass="botao" OnClick="btn_novo_Click" />
    <asp:Button ID="btn_enviar" runat="server" Text="Finalizar" CssClass="botao" OnClick="btn_enviar_Click" />

</asp:Content>

