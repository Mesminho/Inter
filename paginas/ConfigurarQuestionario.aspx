<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfigurarQuestionario.aspx.cs" Inherits="paginas_ConfigurarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        jQuery.fn.toggleText = function (a, b) {
            return this.html(this.html().replace(new RegExp("(" + a + "|" + b + ")"), function (x) { return (x == a) ? b : a; }));
        }

        $(document).ready(function () {
            $('.abrir').before('<span>Expandir</span>');
            $('.abrir').css('display', 'none')
            $('span', '#config').click(function () {
                $(this).next().slideToggle('slow')
                .siblings('.tgl:visible').slideToggle('fast');
                // aqui começa o funcionamento do plugin
                $(this).toggleText('Expandir', 'Esconder')
                .siblings('span').next('.abrir:visible').prev()
                .toggleText('Expandir', 'Esconder')
            });
        })
    </script>

    <asp:Label ID="lblConfig" runat="server" Text="Configuração de questionários" CssClass="texto"></asp:Label>

    <div id="config">
    <p class="textoCorrido">Selecione um questionário para editar:</p>
        <div id="editar" class="abrir">
            <p class="texto">Editar Questionários</p>
            <br />
            <asp:ListBox ID="ltb_questionarioEditar" runat="server" Height="74px" Width="516px" CssClass="">
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
         <p class="textoCorrido">Habilite ou desabilite um questionário:</p>
        <div id="habilitar" class="abrir">
            <table class="tabela">
                <tr>
                    <td>
                        <p class="texto">Habilitar/Desabilitar Questionários</p> 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="ltb_questionarioDesab" runat="server" Height="141px" Width="358px" CssClass="">
                            <asp:ListItem Value="0">Questionário Análise do Perfil de investidor 01</asp:ListItem>
                            <asp:ListItem Value="1">Questionário Análise do Perfil de investidor 02</asp:ListItem>
                            <asp:ListItem Value="2">Questionário Análise do Perfil de investidor 03</asp:ListItem>
                            <asp:ListItem Value="3">Questionário Análise do Perfil de investidor 04</asp:ListItem>
                            <asp:ListItem Value="4">Questionário Análise do Perfil de investidor 05</asp:ListItem>
                            <asp:ListItem Value="5">Questionário Análise do Perfil de investidor 06</asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="cbl_habilitar" runat="server" CssClass="caixaAlternativa" Width="300px">
                            <asp:ListItem Value="0">Habilitar</asp:ListItem>
                            <asp:ListItem Value="1">Permitir Edição</asp:ListItem>
                            <asp:ListItem Value="2">Permitir Uso</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
            </table>
            
        </div>
        <br />
        <p class="textoCorrido">bla bla bla</p>
        <div id="eventos" class="abrir">
            <table class="auto-style1">
                <tr>
                    <td>
                        <p class="texto">Questionário do Evento</p>
                    </td>
                </tr>
                <tr>
                    <td >
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

