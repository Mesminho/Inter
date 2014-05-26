using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using InfoSoftGlobal;


public partial class paginas_Estatistica : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Chart1_Load(object sender, EventArgs e)
    {

    }
    protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    private void carregaGraficos()
    {
        FusionCharts.SetRenderer("javascript"); //Ativa renderizacao por JS
        string largura = "800";
        string altura = "600";
        string meu_chart = ""; //Local do arquivo do grafico
        string meu_xml = ""; //local do arquivo XML
        meu_chart = Session["chart"].ToString();
        meu_xml = Session["xml"].ToString();
        ltl_chart.Text = FusionCharts.RenderChart(meu_chart, meu_xml, "", "browser_share", largura, altura, false, true);
        ltl_chart.Visible = true;
    }
}