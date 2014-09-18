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
                <input type="text" required="" id="txb_nomePergunta" runat="server" style="width: 280px;" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTipoPergunta" runat="server" Text="Tipo da Questão: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlTipoPergunta" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTipoPergunta_SelectedIndexChanged" CssClass="DDList">
                    <asp:ListItem Text="Selecione" Value="0"></asp:ListItem>
                    <asp:ListItem Text="Multipla Escolha" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Dissertativa" Value="2"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvDDLPergunta" CssClass="Alerta" runat="server" ErrorMessage="*" ControlToValidate="ddlTipoPergunta" InitialValue="0"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:MultiView ID="mvwEmpresarial" runat="server">
                    <asp:View ID="ViewSelecione" runat="server">
                    </asp:View>
                    <asp:View ID="ViewEscolha" runat="server">
                        <div id="TextBoxContainer">
                            <asp:Label ID="lbl_alter1" runat="server" Text="Alternativa 1"></asp:Label>
                            <input type="text" required="" id="txb_alter1" runat="server" />
                            <asp:Label ID="lbl_pontos1" runat="server" Text="Pontos"></asp:Label>
                            <input id="txb_pontos1" type="number" required="" max="9000" min="1" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                            <br />
                            <asp:Label ID="lbl_alter2" runat="server" Text="Alternativa 2"></asp:Label>
                            <input type="text" required="" id="txb_alter2" runat="server" />
                            <asp:Label ID="lbl_pontos2" runat="server" Text="Pontos"></asp:Label>
                            <input id="txb_pontos2" type="number" required="" max="9000" min="1" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                            <br />
                            <asp:Label ID="lbl_alter3" runat="server" Text="Alternativa 3"></asp:Label>
                            <input type="text" id="txb_alter3" runat="server" />
                            <asp:Label ID="lbl_pontos3" runat="server" Text="Pontos"></asp:Label>
                            <input id="txb_pontos3" type="number" max="9000" min="1" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                            <br />
                            <asp:Label ID="lbl_alter4" runat="server" Text="Alternativa 4"></asp:Label>
                            <input type="text" id="txb_alter4" runat="server" />
                            <asp:Label ID="lbl_pontos4" runat="server" Text="Pontos"></asp:Label>
                            <input id="txb_pontos4" type="number" max="9000" min="1" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                            <br />
                            <asp:Label ID="lbl_alter5" runat="server" Text="Alternativa 5"></asp:Label>
                            <input type="text" id="txb_alter5" runat="server" />
                            <asp:Label ID="lbl_pontos5" runat="server" Text="Pontos"></asp:Label>
                            <input id="txb_pontos5" type="number" max="9000" min="1" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                            <br />
                            <asp:Label ID="lbl_alter6" runat="server" Text="Alternativa 6"></asp:Label>
                            <input type="text" id="txb_alter6" runat="server" />
                            <asp:Label ID="lbl_pontos6" runat="server" Text="Pontos"></asp:Label>
                            <input id="txb_pontos6" type="number" max="9000" min="1" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                            <br />
                            <asp:Label ID="lbl_alter7" runat="server" Text="Alternativa 7"></asp:Label>
                            <input type="text" id="txb_alter7" runat="server" />
                            <asp:Label ID="lbl_pontos7" runat="server" Text="Pontos"></asp:Label>
                            <input id="txb_pontos7" type="number" max="9000" min="1" name="Pontuacao" runat="server" title="Valoração da alternativa" css="caixaTexto" />
                        </div>

                    </asp:View>

                    <asp:View ID="ViewDissertativa" runat="server">
                    </asp:View>
                </asp:MultiView>


            </td>
        </tr>
    </table>
    <br />
    <input type="button" value="Cancelar" class="btn-cancelar" onclick="cancelar()" />
    <asp:Button ID="btn_novo" runat="server" Text="Nova Questão" CssClass="botao" />
    <asp:Button ID="btn_enviar" runat="server" Text="Finalizar" CssClass="botao" />

</asp:Content>

