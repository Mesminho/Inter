<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPage.master" AutoEventWireup="true" CodeFile="ConfigurarQuestionario.aspx.cs" Inherits="paginas_ConfigurarQuestionario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
            Editar questionários
 
     
        </div>  <br />
        <div id="habilitar" class="abrir">
            Habilitar/Desabilitar

       
        </div> <br />

        <div id="eventos" class="abrir">
            gerenciar eventos

        </div> <br />

    </div>
</asp:Content>

