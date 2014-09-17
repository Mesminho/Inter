
function mudaImg(img) {
    document.getElementById("imgMenu").src = img;
}

var valor = 2;
var pontos = null;

function getTxtBox() {
    return '<label id="alternativa' + valor + '" class="lbl" runat="server">Alternativa: </label>'
            + '<input type="text" name="textfield" id="txt_' + valor + '" runat="server"/>'
            + ' <label id="pontos' + valor + '" class="lbl" runat="server">Pontos: </label>'
            + ' <input type="text" name="textfield" id="txt_p' + valor + '" runat="server"/>'
            + '<input type="button" value="Remove" onclick = "removeTextBox(this)" runat="server"/>';
}

function novoTextDiv() {
    if (valor < 6) {
        var div = document.createElement('DIV');
        div.innerHTML = getTxtBox();
        valor++;
        document.forms.namedItem("textfield").setAttribute("type", "button");
        document.getElementById("TextBoxContainer").appendChild(div);
    } else {
        alert("Você já adicionou o valor máximo de alternativas");
    }

}

function removeTextBox(div, regredir) {
    valor--;
    document.getElementById("TextBoxContainer").removeChild(div.parentNode);
}


function setValor() {
    PageMethods.setValor(valor);
}

function RecreateDynamicTextboxes() {
    var values = eval('<%=Values%>');
    if (values != null) {
        var html = "";
        for (var i = 0; i < values.length; i++) {
            html += "<div>" + GetDynamicTextBox(values[i]) + "</div>";
        }
        document.getElementById("TextBoxContainer").innerHTML = html;
    }
}

function calculaPerfil(quantidade) {
    //Get the radiobuttonlist reference
    var radio = document.getElementsByName('<%= rbl_alternativas0 %>');

    //local variable to store selectedvalue
    var selectedvalue;

    alert(radio.length);

    //loop through the items in radiobuttonlist
    for (var j = 0; j <= radio.length; j++) {
        alert("for 1");
        if (radio[j].checked) {
            alert("for 2");
            selectedvalue = radio[j].value;
            alert(selectedvalue);
            break;
        }
    }
}

function cancelar() {
    if (confirm("Deseja cancelar operação?")) {
        location.href = 'Home.aspx';
    }
}

window.onload = RecreateDynamicTextboxes;

/*JS janela modal*/
$(document).ready(function () {
    $("a[rel=modal]").click(function (ev) {
        ev.preventDefault();

        var id = $(this).attr("href");

        var alturaTela = $(document).height();
        var larguraTela = $(window).width();

        //colocando o fundo preto
        $('#mascara').css({ 'width': larguraTela, 'height': alturaTela });
        $('#mascara').fadeIn(1000);
        $('#mascara').fadeTo("slow", 0.7);

        var left = ($(window).width() / 2) - ($(id).width() / 2);
        var top = ($(window).height() / 2) - ($(id).height() / 2);

        $(id).css({ 'top': top, 'left': left });
        $(id).show();
    });

    $("#mascara").click(function () {
        $(this).hide();
        $(".janela").hide();
    });

    $('.fechar').click(function (ev) {
        ev.preventDefault();
        $("#mascara").hide();
        $(".janela").hide();
    });
});