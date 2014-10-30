<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfirmarModelo.aspx.cs" Inherits="paginas_ConfirmarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .principal {
        }

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

    <div style="display: block; text-align: -webkit-center; text-align: center">
        <asp:Label ID="lbl_nomeModelo" runat="server" CssClass="titulo"></asp:Label>
    </div>
    <hr />


    <div class="principal">
        <section>
            <div runat="server" id="div_modelo" class="modelo">
                <asp:Label ID="lbl_desctitulo" runat="server" CssClass="texto" Text="Descrição do Modelo"></asp:Label><br />
                <br />
                <asp:TextBox ID="txa_descricaoModelo" CssClass="txtArea" Enabled="false" TextMode="MultiLine" Width="200" runat="server" />
                <br />
                <br />
            </div>
        </section>
        <aside id="aside_classificacoes" runat="server">
            <asp:Label ID="lbl_classModelo" runat="server" CssClass="texto" Text="Classificações"></asp:Label><br />
            <br />
            <div runat="server" id="div_classificacoes" class="classificacao">
            </div>
        </aside>

        <aside>
            <div runat="server" id="div_questoes" class="questoes">
                <asp:Label ID="Label1" runat="server" CssClass="texto" Text="Questões"></asp:Label><br />
                <aside runat="server" id="questoesEsquerda">
                </aside>
                <aside runat="server" id="questoesDireita" style="float: none">
                </aside>
                <br />
            </div>
        </aside>
    </div>
    <br />
    <div style="clear: both;">
        <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" OnClick="bnt_cancelar_Click" CssClass="btn-cancelar" />
        <span onclick="return confirm('Deseja finalizar a criação do questionário?')">
            <asp:Button ID="btn_confirmar" runat="server" Text="Confirmar" OnClick="bnt_confirmar_Click" CssClass="botao" />
        </span>
        <span onclick="return confirm('Deseja finalizar a modificação do questionário?')">
            <asp:Button ID="btn_atualizar" runat="server" Visible="false" Text="Atualizar" CssClass="botao" OnClick="btn_atualizar_Click" />
        </span>
    </div>
</asp:Content>

