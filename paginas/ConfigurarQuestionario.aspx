<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfigurarQuestionario.aspx.cs" Inherits="paginas_ConfigurarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 5px;
        }

        .auto-style3 {
            width: 358px;
        }

        .auto-style4 {
            width: 391px;
        }

        .auto-style5 {
            width: 38px;
        }

        .auto-style6 {
            width: 568px;
        }

        .auto-style7 {
            width: 387px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <script type="text/javascript">
        jQuery.fn.toggleText = function (a, b) {
            return this.html(this.html().replace(new RegExp("(" + a + "|" + b + ")"), function (x) { return (x == a) ? b : a; }));
        }

        $(document).ready(function () {
            $('.abrir').before('<span>Esconder</span>');
            $('.abrir').css('none', 'display')
            $('span', '#config').click(function () {
                $(this).next().slideToggle('slow')
                .siblings('.tgl:visible').slideToggle('fast');
                // aqui começa o funcionamento do plugin
                $(this).toggleText('Esconder', 'Revelar')
                .siblings('span').next('.tgl:visible').prev()
                .toggleText('Esconder', 'Revelar')
            });
        })
    </script>

    <script language="javascript" type="text/javascript">
        function msg() {
            alert("O modelo foi habilitado/desabilitado com sucesso.");
        }

    </script>

    <asp:Label ID="lblConfig" runat="server" Text="Configuração de questionários" CssClass="texto"></asp:Label>

    <div id="config">
        <p class="textoCorrido">Selecione um questionário para editar:</p>
        <div id="editar" class="abrir">

            <table class="tabela">
                <tr>
                    <td>
                        <p class="texto">Editar Questionários:</p>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="ltb_questionarioEditar" runat="server" Height="74px" Width="516px" CssClass="">
                            <asp:ListItem Value="0">Questionário Análise do Perfil de investidor 01</asp:ListItem>
                            <asp:ListItem Value="1">Questionário Análise do Perfil de investidor 02</asp:ListItem>
                            <asp:ListItem Value="2">Questionário Análise do Perfil de investidor 03</asp:ListItem>
                            <asp:ListItem Value="3">Questionário Análise do Perfil de investidor 04</asp:ListItem>
                            <asp:ListItem Value="4">Questionário Análise do Perfil de investidor 05</asp:ListItem>
                            <asp:ListItem Value="5">Questionário Análise do Perfil de investidor 06</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Editar" CssClass="botao" OnClick="Button3_Click" />

                    </td>
                </tr>
            </table>

        </div>
        <br />
        <p class="textoCorrido">Habilite ou desabilite um questionário:</p>
        <div id="habilitar" class="abrir">
            <table class="tabela">
                <tr>
                    <td class="auto-style3">
                        <p class="texto">Questionários Habilitados:</p>
                    </td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">
                        <p class="texto">Questionários Desabilitados:</p>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ListBox ID="ltb_questionarioHab" runat="server" Height="141px" Width="358px" CssClass="" OnSelectedIndexChanged="ltb_questionarioHab_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="Questionário Análise do Perfil de investidor 01">Questionário Análise do Perfil de investidor 01</asp:ListItem>
                            <asp:ListItem Value="Questionário Análise do Perfil de investidor 02">Questionário Análise do Perfil de investidor 02</asp:ListItem>
                            <asp:ListItem Value="Questionário Análise do Perfil de investidor 03">Questionário Análise do Perfil de investidor 03</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="btn_habilitar" runat="server" Text="Habilitar" CssClass="botao" OnClick="btn_habilitar_Click" />
                    </td>
                    <td class="auto-style4">
                        <asp:ListBox ID="ltb_questionarioDesab" runat="server" Height="141px" Width="358px" CssClass="" OnSelectedIndexChanged="ltb_questionarioDesab_SelectedIndexChanged" AutoPostBack="true">
                            <asp:ListItem Value="Questionário Análise do Perfil de investidor 04">Questionário Análise do Perfil de investidor 04</asp:ListItem>
                            <asp:ListItem Value="Questionário Análise do Perfil de investidor 05">Questionário Análise do Perfil de investidor 05</asp:ListItem>
                            <asp:ListItem Value="Questionário Análise do Perfil de investidor 06">Questionário Análise do Perfil de investidor 06</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>

        </div>
        <br />
        <p class="textoCorrido">Selecione o questionário principal</p>
        <div id="eventos" class="abrir">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style7">
                        <p class="texto">Questionário do Evento:</p>
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:ListBox ID="ltb_questionarioPrincipal" runat="server" Height="141px" Width="358px" CssClass="">
                            <asp:ListItem Value="Questionário Análise do Perfil de investidor 01">Questionário Análise do Perfil de investidor 01</asp:ListItem>
                            <asp:ListItem Value="Questionário Análise do Perfil de investidor 02">Questionário Análise do Perfil de investidor 02</asp:ListItem>
                            <asp:ListItem Value="Questionário Análise do Perfil de investidor 03">Questionário Análise do Perfil de investidor 03</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="auto-style6">
                        <asp:Label ID="lbl_principal" runat="server" Text="Questionário Análise do Perfil de investidor 02" CssClass="titulo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Tornar Principal" CssClass="botao" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />

        </div>
        <br />

    </div>
</asp:Content>

