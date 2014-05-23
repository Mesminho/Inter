<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="paginas_Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <asp:Label ID="lbl_pontuacao" runat="server" Text="Label" CssClass="titulo"></asp:Label>
    <br />
    <asp:Image ID="imgPerfil" runat="server" CssClass="titulo" Height="16px" ImageUrl="~/images/icones/glyphicons_206_ok_2.png" />
   
    
    <div id="perfil">
         <asp:Label ID="lbl_resultado" runat="server" Text="Label" CssClass="titulo"></asp:Label><br />
        <asp:Label ID="lbl_descricao" runat="server" Text="Label" CssClass="texto"></asp:Label>
        <br />
    </div>

    <asp:Label ID="lbl_observacao" runat="server" Text="Observações: " CssClass="titulo"></asp:Label>
    <br />
    <textarea id="TextArea1" cols="20" name="S1" rows="2" class="caixaTextoObs"></textarea><br />
    <asp:Button ID="btn_sair" runat="server" Text="Sair" CssClass="botao" />
    <asp:Button ID="btn_email" runat="server" Text="Enviar Por email" CssClass="botao" />


</asp:Content>

