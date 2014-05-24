<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfirmarModelo.aspx.cs" Inherits="paginas_ConfirmarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:Label ID="lbl_nomeQuestionario" runat="server" Text="Label" CssClass="titulo"></asp:Label>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta0" runat="server" Visible="False" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_0" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar0" runat="server" Text="Modificar" OnClick="btn_modificar0_Click" Visible="false"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta1" runat="server" Visible="False" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_1" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar1" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar1_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta2" runat="server" Visible="False" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_2" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar2" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar2_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta3" runat="server" Visible="False" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_3" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar3" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar3_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta4" runat="server" Visible="False" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_4" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar4" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar4_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta5" runat="server" Visible="False" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_5" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar5" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar5_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta6" runat="server" Visible="False" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_6" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar6" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar6_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta7" runat="server" Visible="false" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_7" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar7" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar7_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta8" runat="server" Visible="false" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_8" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar8" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar8_Click"/>
    <br />

    <asp:Label ID="lbl_pergunta9" runat="server" Visible="false" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_9" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar9" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar9_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta10" runat="server" Visible="false" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_10" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar10" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar10_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta11" runat="server" Visible="false" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_11" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar11" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar11_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta12" runat="server" Visible="false" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_12" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar12" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar12_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta13" runat="server" Visible="false" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_13" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar13" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar13_Click"/>
    <br />
    <br />

    <asp:Label ID="lbl_pergunta14" runat="server" Visible="false" Text="Label" CssClass="texto"></asp:Label>
    <br />
    <asp:RadioButtonList ID="rbl_14" Visible="false" runat="server" CssClass="caixaAlternativa">
        <asp:ListItem Selected="True">Alternativa 1</asp:ListItem>

    </asp:RadioButtonList>
    <asp:Button ID="btn_modificar14" runat="server" Text="Modificar" Visible="false" OnClick="btn_modificar14_Click"/>
    <br /><br />

    <asp:Button ID="bnt_cancelar" runat="server" Text="Cancelar" OnClick="bnt_cancelar_Click" />

    <asp:Button ID="bnt_confirmar" runat="server" Text="Confirmar" OnClick="bnt_confirmar_Click" />
</asp:Content>

