<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ModificarPergunta.aspx.cs" Inherits="paginas_ModificarPergunta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="../script/funcoes.js"></script>
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
                <asp:RequiredFieldValidator ID="rfvPergunta" runat="server" ControlToValidate="txb_nomePergunta" ErrorMessage=""></asp:RequiredFieldValidator>

            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div id="TextBoxContainer">

                    <table>
                        <tr>
                            <td>

                                <asp:Label ID="lbl_alter1" runat="server" Text="Alternativa 1"></asp:Label>
                                <asp:TextBox ID="txb_alter1" runat="server" required="" />
                                <asp:RequiredFieldValidator ID="rfvAlter1" runat="server" ControlToValidate="txb_alter1" ErrorMessage=""></asp:RequiredFieldValidator>

                            </td>
                            <td>
                                <asp:Label ID="lbl_pontos1" runat="server" Text="Pontos"></asp:Label>
                                <asp:TextBox ID="txb_pontos1" required="" runat="server" type="number" max="9000" min="0" title="Valoração da alternativa" CssClass="caixaTexto" Width="100px" />
                                <asp:RequiredFieldValidator ID="rfvPontos1" runat="server" ControlToValidate="txb_pontos1" ErrorMessage=""></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPontos1" runat="server" ControlToValidate="txb_pontos1" ErrorMessage="" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_alter2" runat="server" Text="Alternativa 2"></asp:Label>
                                <asp:TextBox ID="txb_alter2" runat="server" required="" />
                                <asp:RequiredFieldValidator ID="rfvAlter2" runat="server" ControlToValidate="txb_alter2" ErrorMessage=""></asp:RequiredFieldValidator>

                            </td>
                            <td>
                                <asp:Label ID="lbl_pontos2" runat="server" Text="Pontos"></asp:Label>
                                <asp:TextBox ID="txb_pontos2" required="" runat="server" type="number" max="9000" min="0" title="Valoração da alternativa" CssClass="caixaTexto" Width="100px" />
                                <asp:RequiredFieldValidator ID="rfvPontos2" runat="server" ControlToValidate="txb_pontos2" ErrorMessage=""></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revPontos2" runat="server" ControlToValidate="txb_pontos2" ErrorMessage="" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_alter3" runat="server" Text="Alternativa 3"></asp:Label>
                                <asp:TextBox ID="txb_alter3" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="lbl_pontos3" runat="server" Text="Pontos"></asp:Label>
                                <asp:TextBox ID="txb_pontos3" runat="server" type="number" max="9000" min="0" title="Valoração da alternativa" CssClass="caixaTexto" Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_alter4" runat="server" Text="Alternativa 4"></asp:Label>
                                <asp:TextBox ID="txb_alter4" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="lbl_pontos4" runat="server" Text="Pontos"></asp:Label>
                                <asp:TextBox ID="txb_pontos4" runat="server" type="number" max="9000" min="0" title="Valoração da alternativa" CssClass="caixaTexto" Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_alter5" runat="server" Text="Alternativa 5"></asp:Label>
                                <asp:TextBox ID="txb_alter5" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="lbl_pontos5" runat="server" Text="Pontos"></asp:Label>
                                <asp:TextBox ID="txb_pontos5" runat="server" type="number" max="9000" min="0" title="Valoração da alternativa" CssClass="caixaTexto" Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_alter6" runat="server" Text="Alternativa 6"></asp:Label>
                                <asp:TextBox ID="txb_alter6" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="lbl_pontos6" runat="server" Text="Pontos"></asp:Label>
                                <asp:TextBox ID="txb_pontos6" runat="server" type="number" max="9000" min="0" title="Valoração da alternativa" CssClass="caixaTexto" Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="lbl_alter7" runat="server" Text="Alternativa 7"></asp:Label>
                                <asp:TextBox ID="txb_alter7" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="lbl_pontos7" runat="server" Text="Pontos"></asp:Label>
                                <asp:TextBox ID="txb_pontos7" runat="server" type="number" max="9000" min="0" title="Valoração da alternativa" CssClass="caixaTexto" Width="100px" />
                            </td>
                        </tr>
                    </table>

                </div>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btn_novo" runat="server" Text="Cancelar" OnClick="btn_novo_Click" CssClass="btn-cancelar" />
    <asp:Button ID="btn_enviar" runat="server" Text="Finalizar" OnClick="btn_enviar_Click" CssClass="botao" />
</asp:Content>

