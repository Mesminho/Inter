<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfigQuestionarios.aspx.cs" Inherits="paginas_ConfigQuestionarios" %>

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
    </style>

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
    <asp:UpdatePanel ID="upPAnel" runat="server" UpdateMode="Always">
        <ContentTemplate>
            <asp:Label ID="Label1" runat="server" Text="Selecione um determinado questionário para alterar suas configurações: " CssClass="textoCorrido"></asp:Label>


            <div class="linha">
                <div class="bloco">
                    <asp:ImageButton ID="btnInvestidor" ImageUrl="~/images/perfil_investidor.jpg" runat="server" CssClass="tipoQuestionario" AlternateText="Perfil Investidor" OnClick="btnInvestidor_Click" />
                    <br />
                    Investidor
               
                </div>
                <div class="bloco">
                    <asp:ImageButton ID="btnEducacao" ImageUrl="~/images/educacao_financeira.jpg" runat="server" CssClass="tipoQuestionario" AlternateText="Educação Financeira" OnClick="btnEducacao_Click" />
                    <br />
                    Educação Financeira
               
                </div>
                <div class="bloco">
                    <asp:ImageButton ID="btnEmpresarial" ImageUrl="~/images/perfil_empresarial.jpg" runat="server" CssClass="tipoQuestionario" AlternateText="Empresarial" OnClick="btnEmpresarial_Click" />
                    <br />
                    Empresarial
               
                </div>
            </div>

            <asp:Panel ID="PanelInvestidor" runat="server" CssClass="pnl">
                <button runat="server" id="btnFechar1" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>
                <asp:Label ID="LblInvestidor" Text="Configuração dos questionários - Perfil de Investidor" runat="server" CssClass="titulo"></asp:Label>
                <asp:Accordion
                    ID="accordion"
                    CssClass="accordion"
                    HeaderCssClass="accordionHeader"
                    HeaderSelectedCssClass="accordionHeaderSelected"
                    ContentCssClass="accordionContent"
                    runat="server">
                    <Panes>
                        <asp:AccordionPane ID="acc1" runat="server">
                            <Header>Habilitar e Desabilitar</Header>
                            <Content>

                                <div class="alinhar">
                                    <asp:Label ID="lbl_pesquisarInvestidor" runat="server" Text="Título: " CssClass="texto"></asp:Label>
                                    <asp:TextBox ID="txtBuscaInvestidor" runat="server"></asp:TextBox>
                                    <asp:LinkButton ID="btnBuscarInvestidor" runat="server" CssClass="botao" title="Busque um questionário pelo seu título" OnClick="btnBuscarInvestidor_Click"><i class="fa fa-search" ></i> Buscar</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="lblTotalInvestidorHabilitar" runat="server" CssClass="texto" Visible="false"></asp:Label>
                                </div>

                                <asp:GridView ID="grvInvestidorHabilitar" runat="server" AutoGenerateColumns="false"
                                    PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt"
                                    CssClass="Grid" AllowPaging="true" PageSize="5" PageIndex="0" OnPageIndexChanging="grvInvestidorHabilitar_PageIndexChanging" OnRowCommand="grvInvestidorHabilitar_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="mod_nome" HeaderText="Título do Questionário" />
                                        <asp:BoundField DataField="habilitado" HeaderText="Status" />

                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbAlterar" CommandName="Alterar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-refresh" ></i> Alterar</asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Descrição">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbVisualizar" CommandName="Visualizar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-search" ></i> Visualizar</asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>

                                <br />
                                <asp:Button ID="Teste" CssClass="botao" runat="server" Visible="false" Text="Button" OnClick="btn_falso_Click" />
                            </Content>
                        </asp:AccordionPane>
                        <asp:AccordionPane ID="AccordionPane1" runat="server">
                            <Header>Editar</Header>
                            <Content>

                                <div class="alinhar">
                                    <asp:Label ID="lbl_pesquisarInvestidor2" runat="server" Text="Título: " CssClass="texto"></asp:Label>
                                    <asp:TextBox ID="txtBuscaInvestidor2" runat="server"></asp:TextBox>
                                    <asp:LinkButton ID="btnBuscarInvestidor2" runat="server" CssClass="botao" title="Busque um questionário pelo seu título" OnClick="btnBuscarInvestidor2_Click"><i class="fa fa-search" ></i> Buscar</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="lblTotalInvestidorEditar" CssClass="texto" runat="server" Visible="false"></asp:Label>
                                </div>

                                <asp:GridView ID="grvInvestidorEditar" runat="server" AutoGenerateColumns="false"
                                    PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt"
                                    CssClass="Grid"
                                    OnRowCommand="grvInvestidorEditar_RowCommand"
                                    AllowPaging="true" PageSize="5" OnPageIndexChanging="grvInvestidorEditar_PageIndexChanging">
                                    <Columns>
                                        <asp:BoundField DataField="mod_nome" HeaderText="Título do Questionário" />
                                        <asp:TemplateField HeaderText="Descrição">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbVisualizar" CommandName="Visualizar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-search"></i> Visualizar</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Modificar">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbEditar" CommandName="Editar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-pencil" ></i> Editar</asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <br />

                            </Content>
                        </asp:AccordionPane>
                    </Panes>

                </asp:Accordion>
            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalInvestidor"
                TargetControlID="btnInvestidor"
                PopupControlID="PanelInvestidor"
                OkControlID="btnFechar1"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>



            <%--Educação Financeira--%>

            <asp:Panel ID="PanelEducacao" runat="server" CssClass="pnl">
                <button runat="server" id="btnFechar2" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>
                <asp:Label ID="lblEd" Text="Configuração dos questionários - Educação Financeira" runat="server" CssClass="titulo"></asp:Label>

                <asp:Accordion
                    ID="accordion1"
                    CssClass="accordion"
                    HeaderCssClass="accordionHeader"
                    HeaderSelectedCssClass="accordionHeaderSelected"
                    ContentCssClass="accordionContent"
                    runat="server">
                    <Panes>
                        <asp:AccordionPane ID="AccordionPane2" runat="server">
                            <Header>Habilitar e Desabilitar</Header>
                            <Content>

                                <div class="alinhar">
                                    <asp:Label ID="lbl_pesquisarEd" runat="server" Text="Título: " CssClass="texto"></asp:Label>
                                    <asp:TextBox ID="txtBuscaEd" runat="server"></asp:TextBox>
                                    <asp:LinkButton ID="btnBuscarEd" runat="server" CssClass="botao" title="Busque um questionário pelo seu título" OnClick="btnBuscarEd_Click"><i class="fa fa-search" ></i> Buscar</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="lblTotalEdHabilitar" runat="server" CssClass="texto" Visible="false"></asp:Label>
                                </div>

                                <asp:GridView ID="grvEdFinHabilitar" runat="server" AutoGenerateColumns="false"
                                    PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt"
                                    CssClass="Grid" AllowPaging="true" PageSize="5" PageIndex="0" OnPageIndexChanging="grvEdFinHabilitar_PageIndexChanging" OnRowCommand="grvEdFinHabilitar_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="mod_nome" HeaderText="Título do Questionário" />
                                        <asp:BoundField DataField="habilitado" HeaderText="Status" />

                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbAlterar" CommandName="Alterar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-refresh" ></i> Alterar</asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Descrição">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbVisualizar" CommandName="Visualizar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-search" ></i> Visualizar</asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>
                                <br />
                                <asp:Button ID="Button1" CssClass="botao" runat="server" Visible="false" Text="Button" OnClick="btn_falso_Click" />
                            </Content>
                        </asp:AccordionPane>
                        <asp:AccordionPane ID="AccordionPane3" runat="server">
                            <Header>Editar</Header>
                            <Content>
                                <div class="alinhar">
                                    <asp:Label ID="lbl_pesquisarEd2" runat="server" Text="Título: " CssClass="texto"></asp:Label>
                                    <asp:TextBox ID="txtBuscaEd2" runat="server"></asp:TextBox>
                                    <asp:LinkButton ID="btnBuscarEd2" OnClick="btnBuscarEd2_Click" runat="server" CssClass="botao" title="Busque um questionário pelo seu título"><i class="fa fa-search" ></i> Buscar</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="lblTotalEdEditar" runat="server" CssClass="texto" Visible="false"></asp:Label>
                                </div>
                                <asp:GridView ID="grvEdFinEditar" runat="server" AutoGenerateColumns="false"
                                    PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt"
                                    CssClass="Grid"
                                    OnRowCommand="grvEdFinEditar_RowCommand"
                                    AllowPaging="true" PageSize="5" OnPageIndexChanging="grvEdFinEditar_PageIndexChanging">
                                    <Columns>
                                        <asp:BoundField DataField="mod_nome" HeaderText="Título do Questionário" />
                                        <asp:TemplateField HeaderText="Descrição">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbVisualizar" CommandName="Visualizar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-search"></i> Visualizar</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Modificar">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbEditar" CommandName="Editar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-pencil" ></i> Editar</asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <br />

                            </Content>
                        </asp:AccordionPane>
                    </Panes>

                </asp:Accordion>




            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalEd"
                TargetControlID="btnEducacao"
                PopupControlID="PanelEducacao"
                OkControlID="btnFechar2"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>


            <%--Empresarial--%>
            <asp:Panel ID="PanelEmpresarial" runat="server" CssClass="pnl">
                <button runat="server" id="btnFechar3" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>

                <asp:Label ID="lblEmpresarial" Text="Configuração dos questionários - Empresarial" runat="server" CssClass="titulo"></asp:Label>
                <asp:Accordion
                    ID="accordion2"
                    CssClass="accordion"
                    HeaderCssClass="accordionHeader"
                    HeaderSelectedCssClass="accordionHeaderSelected"
                    ContentCssClass="accordionContent"
                    runat="server">
                    <Panes>
                        <asp:AccordionPane ID="AccordionPane4" runat="server">
                            <Header>Habilitar e Desabilitar</Header>
                            <Content>
                                <div class="alinhar">
                                    <asp:Label ID="lbl_pesquisarEmp" runat="server" Text="Título: " CssClass="texto"></asp:Label>
                                    <asp:TextBox ID="txtBuscaEmp" runat="server"></asp:TextBox>
                                    <asp:LinkButton ID="btnBuscarEmp" OnClick="btnBuscarEmp_Click" runat="server" CssClass="botao" title="Busque um questionário pelo seu título"><i class="fa fa-search" ></i> Buscar</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="lblTotalEmpHabilitar" runat="server" CssClass="texto" Visible="false"></asp:Label>
                                </div>
                                <asp:GridView ID="grvEmpHabilitar" runat="server" AutoGenerateColumns="false"
                                    PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt"
                                    CssClass="Grid" AllowPaging="true" PageSize="5" PageIndex="0" OnPageIndexChanging="grvEmpHabilitar_PageIndexChanging" OnRowCommand="grvEmpHabilitar_RowCommand">
                                    <Columns>
                                        <asp:BoundField DataField="mod_nome" HeaderText="Título do Questionário" />
                                        <asp:BoundField DataField="habilitado" HeaderText="Status" />

                                        <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbAlterar" CommandName="Alterar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-refresh" ></i> Alterar</asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Descrição">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbVisualizar" CommandName="Visualizar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-search" ></i> Visualizar</asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>
                                    </Columns>

                                </asp:GridView>
                                <br />
                                <asp:Button ID="Button2" CssClass="botao" runat="server" Visible="false" Text="Button" OnClick="btn_falso_Click" />
                            </Content>
                        </asp:AccordionPane>
                        <asp:AccordionPane ID="AccordionPane5" runat="server">
                            <Header>Editar</Header>
                            <Content>
                                <div class="alinhar">
                                    <asp:Label ID="lbl_pesquisarEmp2" runat="server" Text="Título: " CssClass="texto"></asp:Label>
                                    <asp:TextBox ID="txtBuscaEmp2" runat="server"></asp:TextBox>
                                    <asp:LinkButton ID="btnBuscarEmp2" OnClick="btnBuscarEmp2_Click" runat="server" CssClass="botao" title="Busque um questionário pelo seu título"><i class="fa fa-search" ></i> Buscar</asp:LinkButton>
                                    <br />
                                    <asp:Label ID="lblTotalEmpEditar" runat="server" CssClass="texto" Visible="false"></asp:Label>
                                </div>
                                <asp:GridView ID="grvEmpEditar" runat="server" AutoGenerateColumns="false"
                                    PagerStyle-CssClass="pgr"
                                    AlternatingRowStyle-CssClass="alt"
                                    CssClass="Grid"
                                    OnRowCommand="grvEmpEditar_RowCommand"
                                    AllowPaging="true" PageSize="5" OnPageIndexChanging="grvEmpEditar_PageIndexChanging">
                                    <Columns>
                                        <asp:BoundField DataField="mod_nome" HeaderText="Título do Questionário" />
                                        <asp:TemplateField HeaderText="Descrição">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbVisualizar" CommandName="Visualizar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-search"></i> Visualizar</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Modificar">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lbEditar" CommandName="Editar" CausesValidation="false" CommandArgument='<%# Bind("mod_codigo")%>' runat="server"><i class="fa fa-pencil" ></i> Editar</asp:LinkButton>
                                            </ItemTemplate>

                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <br />

                            </Content>
                        </asp:AccordionPane>
                    </Panes>

                </asp:Accordion>

            </asp:Panel>


            <asp:ModalPopupExtender runat="server"
                ID="ModalEmpresarial"
                TargetControlID="btnEmpresarial"
                PopupControlID="PanelEmpresarial"
                OkControlID="btnFechar3"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>


            <!--Modal para descrição do questionario-->
            <asp:Panel ID="PanelDesc" runat="server" CssClass="pnl">
                <button runat="server" id="btnFechar4" class="fechar" title="fechar">
                    <i class="fa fa-times"></i>
                </button>


                <asp:Label ID="Label3" Text="Descrição do Questionário" runat="server" CssClass="titulo"></asp:Label>
                <br />

                <p class="text-center ">
                    <asp:Label ID="Descricao" runat="server" CssClass="textoCorrido"></asp:Label>
                </p>


            </asp:Panel>

            <asp:ModalPopupExtender runat="server"
                ID="ModalPopupExtenderDesc"
                TargetControlID="btn_falso"
                PopupControlID="PanelDesc"
                OkControlID="btnFechar4"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>
            <asp:Button ID="btn_falso" runat="server" Text="" OnClick="btn_falso_Click" Style="border: none; background-color: #fff" Enabled="false" />



        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

