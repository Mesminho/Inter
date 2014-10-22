<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfirmarModelo.aspx.cs" Inherits="paginas_ConfirmarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .div_modelo {
        }

        .classificacoes {
        }

        .questoes {
        }

        aside {
            display: table;
            float: right;
            height: auto;
            margin-bottom: 20px;
            margin-left: 5px;
            margin-top: 20px;
        }

        section {
            height: auto;
            display: table;
            margin-bottom: 20px;
            margin-left: 5px;
            margin-top: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label ID="lbl_nomeModelo" runat="server" CssClass="titulo"></asp:Label>
    <hr />
    <section>
        <div runat="server" id="div_modelo" class="modelo">
            <br />
            <asp:Label ID="lbl_descricaoModelo" runat="server" CssClass="textoCorrido"></asp:Label>
            <br />
            <br />
        </div>

        <div runat="server" id="div_classificacoes" class="classificacao">
        </div>
    </section>

    <aside>
        <div runat="server" id="div_questoes" class="questoes">
        </div>
    </aside>

    <br />

    <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" OnClick="bnt_cancelar_Click" CssClass="btn-cancelar" />
    <span onclick="return confirm('Deseja finalizar a criação do questionário?')">
        <asp:Button ID="btn_confirmar" runat="server" Text="Confirmar" OnClick="bnt_confirmar_Click" CssClass="botao" />
        <asp:Button ID="btn_atualizar" runat="server" Visible="false" Text="Atualizar" CssClass="botao" OnClick="btn_atualizar_Click" />

    </span>
</asp:Content>

