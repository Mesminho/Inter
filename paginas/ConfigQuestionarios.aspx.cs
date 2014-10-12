using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_ConfigQuestionarios : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            CarregaGrid();
            ModalInvestidor.Hide();
            ModalEd.Hide();
            ModalEmpresarial.Hide();
          
        }
    }

    private void CarregaGrid()
    {
        DataSet ds = Mod_modelosDB.SelectAll();
        FuncoesBasicas.Function.CarregaGrid(ds, grvQ, lblTotal);
        FuncoesBasicas.Function.CarregaGrid(ds, grvQ2, lblTotal);
    }

    protected void btnInvestidor_Click(object sender, ImageClickEventArgs e)
    {
        ModalInvestidor.Show();
        
    }
    protected void btnEducacao_Click(object sender, ImageClickEventArgs e)
    {
        ModalEd.Show();
    }
    protected void btnEmpresarial_Click(object sender, ImageClickEventArgs e)
    {
        ModalEmpresarial.Show();

    }


    protected void grvQ_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvQ.PageIndex = e.NewPageIndex;
        CarregaGrid();
        ModalInvestidor.Show();
    }
}