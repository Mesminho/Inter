<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfigurarQuestionario.aspx.cs" Inherits="paginas_ConfigurarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
        }

        .auto-style3 {
            width: 333px;
            height: 88px;
        }

        .auto-style4 {
            height: 88px;
        }

        .auto-style5 {
        }

        .auto-style6 {
            width: 352px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        jQuery.fn.toggleText = function (a, b) {
            return this.html(this.html().replace(new RegExp("(" + a + "|" + b + ")"), function (x) { return (x == a) ? b : a; }));
        }

        $(document).ready(function () {
            $('.abrir').before('<span>Configuração</span>');
            $('.abrir').css('display', 'none')
            $('span', '#config').click(function () {
                $(this).next().slideToggle('slow')
                .siblings('.tgl:visible').slideToggle('fast');
                // aqui começa o funcionamento do plugin
                $(this).toggleText('Revelar', 'Esconder')
                .siblings('span').next('.abrir:visible').prev()
                .toggleText('Revelar', 'Esconder')
            });
        })
    </script>


    <div id="config">
        <div id="editar" class="abrir">
            <asp:Label ID="lbl_editar" runat="server" Text="Editar Questionários" CssClass="titulo"></asp:Label>
            <br />
            &nbsp;<asp:ListBox ID="ltb_questionarioEditar" runat="server" Height="74px" Width="516px" CssClass="">
                <asp:ListItem Value="0">Questionário Análise do Perfil de investidor 01</asp:ListItem>
                <asp:ListItem Value="1">Questionário Análise do Perfil de investidor 02</asp:ListItem>
                <asp:ListItem Value="2">Questionário Análise do Perfil de investidor 03</asp:ListItem>
                <asp:ListItem Value="3">Questionário Análise do Perfil de investidor 04</asp:ListItem>
                <asp:ListItem Value="4">Questionário Análise do Perfil de investidor 05</asp:ListItem>
                <asp:ListItem Value="5">Questionário Análise do Perfil de investidor 06</asp:ListItem>
            </asp:ListBox>
            <br />
            <asp:Button ID="Button3" runat="server" Text="Editar" CssClass="botao" />

        </div>
        <br />
        <div id="habilitar" class="abrir">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Habilitar/Desabilitar Questionários" CssClass="titulo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:ListBox ID="ltb_questionarioDesab" runat="server" Height="141px" Width="358px" CssClass="">
                            <asp:ListItem Value="0">Questionário Análise do Perfil de investidor 01</asp:ListItem>
                            <asp:ListItem Value="1">Questionário Análise do Perfil de investidor 02</asp:ListItem>
                            <asp:ListItem Value="2">Questionário Análise do Perfil de investidor 03</asp:ListItem>
                            <asp:ListItem Value="3">Questionário Análise do Perfil de investidor 04</asp:ListItem>
                            <asp:ListItem Value="4">Questionário Análise do Perfil de investidor 05</asp:ListItem>
                            <asp:ListItem Value="5">Questionário Análise do Perfil de investidor 06</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="auto-style4">
                        <asp:CheckBoxList ID="cbl_habilitar" runat="server" CssClass="caixaAlternativa" Width="300px">
                            <asp:ListItem Value="0">Habilitar</asp:ListItem>
                            <asp:ListItem Value="1">Permitir Edição</asp:ListItem>
                            <asp:ListItem Value="2">Permitir Uso</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;<br />
        </div>
        <br />

        <div id="eventos" class="abrir">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="2">
                        <asp:Label ID="lbl_evento" runat="server" Text="Questionário do Evento" CssClass="titulo"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:ListBox ID="ltb_evento" runat="server" Height="140px" Width="358px" CssClass="">
                            <asp:ListItem Value="0">Questionário Análise do Perfil de investidor 01</asp:ListItem>
                            <asp:ListItem Value="1">Questionário Análise do Perfil de investidor 02</asp:ListItem>
                            <asp:ListItem Value="2">Questionário Análise do Perfil de investidor 03</asp:ListItem>
                            <asp:ListItem Value="3">Questionário Análise do Perfil de investidor 04</asp:ListItem>
                            <asp:ListItem Value="4">Questionário Análise do Perfil de investidor 05</asp:ListItem>
                            <asp:ListItem Value="5">Questionário Análise do Perfil de investidor 06</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="cbl_habilitar0" runat="server" CssClass="caixaAlternativa" Width="300px">
                            <asp:ListItem Value="0">Questionário Principal</asp:ListItem>
                            <asp:ListItem Value="1">Usado em eventos Anteriores</asp:ListItem>
                            <asp:ListItem Value="2">Editavel</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;<br />

        </div>
        <br />

    </div>
</asp:Content>

