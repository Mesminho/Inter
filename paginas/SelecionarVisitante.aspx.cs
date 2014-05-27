using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_SelecionarVisitante : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnContinuar_Click(object sender, EventArgs e)
    {
        Session["NomeVisitante"] = txtNome.Text;
        Response.Redirect("SelecionarQuestionario.aspx");
    }
}