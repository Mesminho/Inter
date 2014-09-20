<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfirmarModelo.aspx.cs" Inherits="paginas_ConfirmarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script language="javascript" type="text/javascript">
        function msg() {
            alert("Modelo do questionário salvo com sucesso.");
        }

    </script>

    <asp:Label ID="lbl_nomeQuestionario" runat="server" Text="Label" CssClass="titulo"></asp:Label>
    <br />
    <br />

    <div runat="server" id="div_confirmar">

    </div>

    <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" OnClick="bnt_cancelar_Click" CssClass="botao" />

    <asp:Button ID="btn_confirmar" runat="server" Text="Confirmar" OnClick="bnt_confirmar_Click" CssClass="botao" />
</asp:Content>

