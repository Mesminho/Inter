<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfirmarModelo.aspx.cs" Inherits="paginas_ConfirmarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function msg() {
            alert("Modelo do questionário salvo com sucesso.");
        }

    </script>

    <div runat="server" id="div_modelo" style="margin-bottom: 20px; margin-left: 5px; margin-top: 20px;">
        <asp:Label ID="lbl_nomeModelo" runat="server" CssClass="titulo"></asp:Label>
        <br />
        <asp:Label ID="lbl_descricaoModelo" runat="server" CssClass="textoCorrido"></asp:Label>
        <br />
        <br />
    </div>
    <br />

    <div runat="server" id="div_classificacoes" style="margin-bottom: 20px; margin-left: 5px; margin-top: 20px;">
    </div>
    <br />

    <div runat="server" id="div_questoes" style="margin-bottom: 20px; margin-left: 5px; margin-top: 20px;">
    </div>
    <br />

    <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" OnClick="bnt_cancelar_Click" CssClass="btn-cancelar" />
    <span onclick="return confirm('Deseja finalizar a criação do questionário?')">
        <asp:Button ID="btn_confirmar" runat="server" Text="Confirmar" OnClick="bnt_confirmar_Click" CssClass="botao" />
    </span>
</asp:Content>

