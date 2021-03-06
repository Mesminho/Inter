﻿<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ModificarModelo.aspx.cs" Inherits="paginas_ModificarModeloEd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table class="tabela">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblInfo" runat="server" CssClass="textoCorrido" Text="Modifique o modelo do questionário:"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_nomeModelo" runat="server" Text="Nome do Modelo: " CssClass="texto"></asp:Label>
            </td>
            <td>
                <input type="text" id="txb_nomeModelo" runat="server" class="caixaTexto" required="" /></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl_descricao" runat="server" CssClass="texto" Text="Descrição: "></asp:Label>

            </td>
            <td>
                <textarea id="txt_descricao" cols="20" name="S1" rows="20" class="txtArea" runat="server" wrap="hard"></textarea></td>
        </tr>
    </table>

    <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" CssClass="btn-cancelar" OnClick="btn_cancelar_Click"/>
    <asp:Button ID="btn_continuar" runat="server" Text="Continuar" CssClass="botao" OnClick="btn_continuar_Click" /><br />
    

</asp:Content>

