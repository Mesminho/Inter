<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ModificarPergunta.aspx.cs" Inherits="paginas_ModificarPergunta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script src="../script/funcoes.js"></script>
    <asp:Label ID="lblModelo" runat="server" Text="Modelo: " CssClass="texto"></asp:Label>
    <asp:Label ID="lbl_nomeQuestionario" runat="server" Font-Bold="true" CssClass="texto"></asp:Label>
    <br />
    <asp:Label ID="lbl_nomeQuestao" runat="server" Text="Titulo da Questão: " CssClass="texto"></asp:Label>
    <asp:TextBox ID="txb_nomePergunta" runat="server" OnTextChanged="TextBox1_TextChanged" Width="147px" Font-Bold="False"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txb_nomePergunta" ErrorMessage="Preenchimento Obrigatório" ForeColor="Red" CssClass="textoAlerta"></asp:RequiredFieldValidator>
    <br />
    <div id="TextBoxContainer">
        <asp:Label ID="lbl_alter1" runat="server" Text="Alternativa 1"></asp:Label>
        <asp:TextBox ID="txb_alter1" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_pontos1" runat="server" Text="Pontos"></asp:Label>
        <asp:TextBox ID="txb_pontos1" runat="server"></asp:TextBox>
        *<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txb_alter1" ErrorMessage="Preenchimento Obrigatório" ForeColor="Red" CssClass="textoAlerta"></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="lbl_alter2" runat="server" Text="Alternativa 2"></asp:Label>
        <asp:TextBox ID="txb_alter2" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_pontos2" runat="server" Text="Pontos"></asp:Label>
        <asp:TextBox ID="txb_pontos2" runat="server"></asp:TextBox>
        *<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txb_alter2" ErrorMessage="Preenchimento Obrigatório" ForeColor="Red" CssClass="textoAlerta"></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="lbl_alter3" runat="server" Text="Alternativa 3"></asp:Label>
        <asp:TextBox ID="txb_alter3" runat="server"></asp:TextBox>
        <asp:Label ID="lbl_pontos3" runat="server" Text="Pontos"></asp:Label>
        <asp:TextBox ID="txb_pontos3" runat="server"></asp:TextBox>
        *<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txb_alter3" ErrorMessage="Preenchimento Obrigatório" ForeColor="Red" CssClass="textoAlerta"></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="lbl_alter4" runat="server" Text="Alternativa 4" Visible="False"></asp:Label>
        <asp:TextBox ID="txb_alter4" runat="server" Visible="False"></asp:TextBox>
        <asp:Label ID="lbl_pontos4" runat="server" Text="Pontos" Visible="False"></asp:Label>
        <asp:TextBox ID="txb_pontos4" runat="server" Visible="False"></asp:TextBox>
        <br />

        <asp:Label ID="lbl_alter5" runat="server" Text="Alternativa 5" Visible="False"></asp:Label>
        <asp:TextBox ID="txb_alter5" runat="server" Visible="False"></asp:TextBox>
        <asp:Label ID="lbl_pontos5" runat="server" Text="Pontos" Visible="False"></asp:Label>
        <asp:TextBox ID="txb_pontos5" runat="server" Visible="False"></asp:TextBox>
        <br />

        <asp:Label ID="lbl_alter6" runat="server" Text="Alternativa 6" Visible="False"></asp:Label>
        <asp:TextBox ID="txb_alter6" runat="server" Visible="False"></asp:TextBox>
        <asp:Label ID="lbl_pontos6" runat="server" Text="Pontos" Visible="False"></asp:Label>
        <asp:TextBox ID="txb_pontos6" runat="server" Visible="False"></asp:TextBox>
        <br />

        <asp:Label ID="lbl_alter7" runat="server" Text="Alternativa 7" Visible="False"></asp:Label>
        <asp:TextBox ID="txb_alter7" runat="server" Visible="False"></asp:TextBox>
        <asp:Label ID="lbl_pontos7" runat="server" Text="Pontos" Visible="False"></asp:Label>
        <asp:TextBox ID="txb_pontos7" runat="server" Visible="False"></asp:TextBox>
    </div>
    <br />
    <asp:Button ID="btn_novo" runat="server" Text="Cancelar" OnClick="btn_novo_Click" CssClass="botao" />
    <asp:Button ID="btn_enviar" runat="server" Text="Finalizar" OnClick="btn_enviar_Click" CssClass="botao" />
</asp:Content>

