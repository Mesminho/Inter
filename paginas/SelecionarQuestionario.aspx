<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="SelecionarQuestionario.aspx.cs" Inherits="paginas_SelecionarQuestionario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        input[type="text"] {
            margin-top: 8px;
            font-size: 16px;
            border: solid 1px silver;
            padding: 2px;
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;
            background-color: #f2f0ed;
            height: 20px;
            font-family: Calibri;
            color: rgb(56, 55, 55);
        }

            input[type="text"]:focus {
                border: 1px solid rgb(18,95,118);
            }

        .botao {
            margin-top: 14px !important;
        }

        .alinhar {
            margin-left: 10px;
            font-family: Calibri;
        }

        .centro {
            display: block;
            text-align: center;
        }
    </style>

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="upPAnel" runat="server" UpdateMode="Always">
        <ContentTemplate>

            <asp:Label ID="lblInfo" runat="server" Text="Escolha um tipo de questionário para aplicar: " CssClass="textoCorrido"></asp:Label>

            <div class="linha">
                <div class="bloco">
                    <asp:ImageButton ID="btnInvestidor" ImageUrl="~/images/perfil_investidor.jpg" runat="server" CssClass="tipoQuestionario" AlternateText="Perfil Investidor" OnClick="btnInvestidor_Click" />
                    <br />
                    Investidor
               
                </div>
                <div class="bloco">
                    <asp:ImageButton ID="btnEducacao" ImageUrl="~/images/educacao_financeira.jpg" runat="server" CssClass="tipoQuestionario" AlternateText="Educação Financeira" />
                    <br />
                    Educação Financeira
               
                </div>
                <div class="bloco">
                    <asp:ImageButton ID="btnEmpresarial" ImageUrl="~/images/perfil_empresarial.jpg" runat="server" CssClass="tipoQuestionario" AlternateText="Empresarial" />
                    <br />
                    Empresarial
               
                </div>
            </div>

            <!--Modal investidor-->
            <asp:Panel ID="PanelSelecionarInvestidor" runat="server" CssClass="pnl">
                <button runat="server" id="btnFecharInvestidor" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>
                <div class="centro">
                    <asp:Label ID="lblInvestidor" Text="Investidor" runat="server" CssClass="titulo"></asp:Label>
                    <br />
                </div>
                <div class="alinhar">
                    <asp:Label ID="lbl_pesquisarInvestidor" runat="server" Text="Título: " CssClass="texto"></asp:Label>
                    <asp:TextBox ID="txtBuscaInvestidor" runat="server"></asp:TextBox>
                    <asp:LinkButton ID="btnBuscarInvestidor" runat="server" CssClass="botao" title="Busque um questionário pelo seu título" OnClick="btnBuscarInvestidor_Click"><i class="fa fa-search" ></i> Buscar</asp:LinkButton>
                    <br />
                    <asp:Label ID="lblTotalInvestidor" runat="server" CssClass="texto" Visible="false"></asp:Label>
                </div>

                <asp:GridView ID="grvInvestidor" runat="server" AutoGenerateColumns="false"
                    PagerStyle-CssClass="pgr"
                    AlternatingRowStyle-CssClass="alt"
                    CssClass="Grid" AllowPaging="true" PageSize="5" PageIndex="0" OnPageIndexChanging="grvInvestidor_PageIndexChanging" OnRowCommand="grvInvestidor_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="mod_nome" HeaderText="Título do Questionário" />

                        <asp:TemplateField HeaderText="Descrição">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbVisualizar" OnClick="btn_falso_Click" CommandName="Visualizar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-search" ></i> Visualizar</asp:LinkButton>
                            </ItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Selecionar">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbSelecionar" CommandName="Selecionar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-usd" ></i> Aplicar</asp:LinkButton>
                            </ItemTemplate>

                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>

            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalInvestidor"
                TargetControlID="btnInvestidor"
                PopupControlID="PanelSelecionarInvestidor"
                OkControlID="btnFecharInvestidor"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>

            <!--Modal Educação Financeira-->
            <asp:Panel ID="PanelSelecionarEdFin" runat="server" CssClass="pnl">
                <button runat="server" id="btnFecharEdFin" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>
                <div class="centro">
                    <asp:Label ID="lblEdFin" Text="Educação Financeira" runat="server" CssClass="titulo"></asp:Label>
                    <br />
                </div>
                <div class="alinhar">
                    <asp:Label ID="lbl_pesquisarEdFin" runat="server" Text="Título: " CssClass="texto"></asp:Label>
                    <asp:TextBox ID="txtBuscaEdFin" runat="server"></asp:TextBox>
                    <asp:LinkButton ID="btnBuscarEdFin" runat="server" CssClass="botao" title="Busque um questionário pelo seu título" OnClick="btnBuscarEdFin_Click"><i class="fa fa-search" ></i> Buscar</asp:LinkButton>
                    <br />
                    <asp:Label ID="lblTotalEdFin" runat="server" CssClass="texto" Visible="false"></asp:Label>
                </div>

                <asp:GridView ID="grvEdFin" runat="server" AutoGenerateColumns="false"
                    PagerStyle-CssClass="pgr"
                    AlternatingRowStyle-CssClass="alt"
                    CssClass="Grid" AllowPaging="true" PageSize="5" PageIndex="0" OnPageIndexChanging="grvEdFin_PageIndexChanging" OnRowCommand="grvEdFin_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="mod_nome" HeaderText="Título do Questionário" />

                        <asp:TemplateField HeaderText="Descrição">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbVisualizar" OnClick="btn_falso_Click" CommandName="Visualizar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-search" ></i> Visualizar</asp:LinkButton>
                            </ItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Selecionar">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbSelecionar" CommandName="Selecionar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-graduation-cap" ></i> Aplicar</asp:LinkButton>
                            </ItemTemplate>

                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>

            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalEdFin"
                TargetControlID="btnEducacao"
                PopupControlID="PanelSelecionarEdFin"
                OkControlID="btnFecharEdFin"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>

            <!--Modal Empresarial-->
            <asp:Panel ID="PanelSelecionarEmp" runat="server" CssClass="pnl">
                <button runat="server" id="btnFecharEmp" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>
                <div class="centro">
                    <asp:Label ID="lblEmp" Text="Empresarial" runat="server" CssClass="titulo"></asp:Label>
                    <br />
                </div>
                <div class="alinhar">
                    <asp:Label ID="lbl_pesquisarEmp" runat="server" Text="Título: " CssClass="texto"></asp:Label>
                    <asp:TextBox ID="txtBuscaEmp" runat="server"></asp:TextBox>
                    <asp:LinkButton ID="btnBuscarEmp" runat="server" CssClass="botao" title="Busque um questionário pelo seu título" OnClick="btnBuscarEmp_Click"><i class="fa fa-search" ></i> Buscar</asp:LinkButton>
                    <br />
                    <asp:Label ID="lblTotalEmp" runat="server" CssClass="texto" Visible="false"></asp:Label>
                </div>

                <asp:GridView ID="grvEmp" runat="server" AutoGenerateColumns="false"
                    PagerStyle-CssClass="pgr"
                    AlternatingRowStyle-CssClass="alt"
                    CssClass="Grid" AllowPaging="true" PageSize="5" PageIndex="0" OnPageIndexChanging="grvEmp_PageIndexChanging" OnRowCommand="grvEmp_RowCommand">
                    <Columns>
                        <asp:BoundField DataField="mod_nome" HeaderText="Título do Questionário" />

                        <asp:TemplateField HeaderText="Descrição">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbVisualizar" OnClick="btn_falso_Click" CommandName="Visualizar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-search" ></i> Visualizar</asp:LinkButton>
                            </ItemTemplate>

                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Selecionar">
                            <ItemTemplate>
                                <asp:LinkButton ID="lbSelecionar" CommandName="Selecionar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-building" ></i> Aplicar</asp:LinkButton>
                            </ItemTemplate>

                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>

            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalEmp"
                TargetControlID="btnEmpresarial"
                PopupControlID="PanelSelecionarEmp"
                OkControlID="btnFecharEmp"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>

            <!--Modal para descrição do questionario-->
            <asp:Panel ID="PanelDesc" runat="server" CssClass="pnl">
                <button runat="server" id="btnFecharDescricao" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>

                <asp:Label ID="lblMsg" Text="Descrição do Questionário" runat="server" CssClass="titulo"></asp:Label>
                <br />

                <p class="text-center">
                    <asp:Label ID="lblDescricao" runat="server" CssClass="textoCorrido"></asp:Label>
                </p>

            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalPopupExtenderDesc"
                TargetControlID="btn_falso"
                PopupControlID="PanelDesc"
                OkControlID="btnFecharDescricao"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>
            <asp:Button ID="btn_falso" runat="server" Text="" OnClick="btn_falso_Click" Style="border: none; background-color: #fff" Enabled="false" />



        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

