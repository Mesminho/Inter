using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_Questionario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void rbl_alternativas2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btn_enviar_Click(object sender, EventArgs e)
    {
        int pontos = 0;
        //Pega o valor dos radios buttons selecionados
        pontos += int.Parse(rbl_alternativas0.SelectedValue);
        pontos += int.Parse(rbl_alternativas1.SelectedValue);
        pontos += int.Parse(rbl_alternativas2.SelectedValue);
        pontos += int.Parse(rbl_alternativas3.SelectedValue);
        pontos += int.Parse(rbl_alternativas4.SelectedValue);
        pontos += int.Parse(rbl_alternativas5.SelectedValue);
        pontos += int.Parse(rbl_alternativas6.SelectedValue);
        pontos += int.Parse(rbl_alternativas7.SelectedValue);
        pontos += int.Parse(rbl_alternativas8.SelectedValue);
        pontos += int.Parse(rbl_alternativas9.SelectedValue);
        pontos += int.Parse(rbl_alternativas10.SelectedValue);
        Session["pontos"] = pontos; //Passa o valor para sessao
        Response.Redirect("Resultado.aspx"); //Redireciona para o resultado

    }

    protected void rbl_alternativas0_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}