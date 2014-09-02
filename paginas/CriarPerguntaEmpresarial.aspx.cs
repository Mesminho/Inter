using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CriarPerguntaEmpresarial : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            mvwEmpresarial.ActiveViewIndex = Convert.ToInt32(ddlTipoPergunta.SelectedValue);
        }

    }

    protected void ddlTipoPergunta_SelectedIndexChanged(object sender, EventArgs e)
    {
        mvwEmpresarial.ActiveViewIndex = Convert.ToInt32(ddlTipoPergunta.SelectedValue);
    }
}