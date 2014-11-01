<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="AplicarQuestionario.aspx.cs" Inherits="paginas_AplicarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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

    <div style="display: block; text-align: -webkit-center; text-align: center">
        <asp:Label ID="lbl_nomeModelo" runat="server" CssClass="titulo"></asp:Label>
    </div>
    <hr />



    <section>
        <asp:Label ID="lbl_questoes" runat="server" CssClass="texto" Text="Questões"></asp:Label><br />
        <aside id="div_questoesEsquerda" runat="server">
        </aside>
        <aside id="div_questoresDireita" runat="server">
        </aside>

    </section>
    <aside id="div_Visitante">
        <asp:Label ID="lbl_visitante" runat="server" CssClass="texto" Text="Visitante"></asp:Label><br />
        <br />
        <div id="div_visitante" runat="server" style="border: 1px solid rgb(18, 95, 118); border-radius: 2px; margin:5px; padding:5px">
       
        </div>
    </aside>


    <br />
    <div style="clear: both;">
        <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" CssClass="btn-cancelar" />
        <span onclick="return confirm('Deseja finalizar a aplicação do questionário?')">
            <asp:Button ID="btn_confirmar" runat="server" Text="Confirmar" CssClass="botao" />
        </span>
        <span onclick="return confirm('Deseja finalizar a aplicação do questionário?')">
            <asp:Button ID="btn_atualizar" runat="server" Visible="false" Text="Atualizar" CssClass="botao" />
        </span>
    </div>

</asp:Content>

