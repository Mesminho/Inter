<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="Resultado.aspx.cs" Inherits="paginas_Resultado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">




    <style type="text/css">
        .colunaResultado {
          text-align:justify;
           padding: 20px;
        }
   
    </style>




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <table class="tabela">
        <tr>
            <td colspan="2">


    <asp:Label ID="lbl_pontuacao" runat="server" Text="Label" CssClass="titulo"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
    <asp:Image ID="imgPerfil" runat="server" ImageUrl="~/images/icones/agressivo.png" />



            </td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">



    <asp:Label ID="lbl_resultado" runat="server" Text="Label" CssClass="texto"></asp:Label>



            </td>
            <td class="auto-style1">



                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" class="colunaResultado">
    <asp:Label ID="lbl_descricao" runat="server" Text="Label" CssClass="textoCorrido"></asp:Label>
            </td>
        </tr>
        </table>
    <table class="tabela">
        <tr>
            <td colspan="2">


    <asp:Label ID="lbl_info" runat="server" Text="Adicione algum comentário ao resultado:" CssClass="textoCorrido"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>


    <asp:Label ID="lbl_observacao" runat="server" Text="Observações:" CssClass="texto"></asp:Label>
            </td>
            <td>
    <textarea id="TextArea1" name="S1" class="txtArea" cols="20" rows="1"></textarea></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btn_sair" runat="server" Text="Sair" CssClass="botao" />
    <asp:Button ID="btn_email" runat="server" Text="Enviar por e-mail" CssClass="botao" />


</asp:Content>

