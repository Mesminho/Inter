using FuncoesBasicas;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_SelecionarQuestionario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            CarregaGridInvestidor();
            CarregaGridEd();
            CarregaGridEmp();
            ModalInvestidor.Hide();
        }
    }

    private void CarregaGridInvestidor()
    {
        DataSet dsInvestidor = Mod_modelosDB.SelectAll(1);       

        FuncoesBasicas.Function.CarregaGrid(dsInvestidor, grvInvestidor, lblTotalInvestidor);       

    }
    private void CarregaGridEd()
    {
        DataSet dsEd = Mod_modelosDB.SelectAll(2);

        FuncoesBasicas.Function.CarregaGrid(dsEd, grvEdFin, lblTotalEdFin);

    }
    private void CarregaGridEmp()
    {
        DataSet dsEmp = Mod_modelosDB.SelectAll(3);

        FuncoesBasicas.Function.CarregaGrid(dsEmp, grvEmp, lblTotalEmp);

    }

    protected void btnInvestidor_Click(object sender, ImageClickEventArgs e)
    {
        ModalInvestidor.Show();
    }
    //Investidor pagina
    protected void grvInvestidor_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvInvestidor.PageIndex = e.NewPageIndex;
        CarregaGridInvestidor();
        ModalInvestidor.Show();
    }

    //RowCommand da Grid Investidor 
    protected void grvInvestidor_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            lblDescricao.Text = Function.QuebrarLinha(mod.DescricaoModelo, 70);
            ModalPopupExtenderDesc.Show();
            ModalInvestidor.Show();

        }

        ModalInvestidor.Show();
    }

    //Ed fin pagina
    protected void grvEdFin_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvEdFin.PageIndex = e.NewPageIndex;
        CarregaGridEd();
        ModalEdFin.Show();
    }

    //RowCommand da Grid Ed Fin
    protected void grvEdFin_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            lblDescricao.Text = Function.QuebrarLinha(mod.DescricaoModelo, 70); 
            ModalPopupExtenderDesc.Show();
            ModalEdFin.Show();

        }

        ModalEdFin.Show();
    }


    //RowCommand da Grid Emp
    protected void grvEmp_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            lblDescricao.Text = Function.QuebrarLinha(mod.DescricaoModelo, 70);
            ModalPopupExtenderDesc.Show();
            ModalEdFin.Show();

        }

        ModalEmp.Show();
    }

    //emp pagia
    protected void grvEmp_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvEdFin.PageIndex = e.NewPageIndex;
        CarregaGridEmp();
        ModalEmp.Show();
    }

    protected void btn_falso_Click(object sender, EventArgs e)
    {
        ModalPopupExtenderDesc.Show();
        ModalInvestidor.Show();
    }

    //Buscar valor numa grid
    protected void buscarModelo(TextBox txt, GridView grv, Label lbl, int tipo)
    {
        string busca = txt.Text;

        DataSet ds = Mod_modelosDB.Buscar(busca, tipo);
        FuncoesBasicas.Function.CarregaGrid(ds, grv, lbl);
        lbl.Visible = true;
    }
    protected void btnBuscarInvestidor_Click(object sender, EventArgs e)
    {
        buscarModelo(txtBuscaInvestidor, grvInvestidor, lblTotalInvestidor, 1);
        ModalInvestidor.Show();
    }
    protected void btnBuscarEdFin_Click(object sender, EventArgs e)
    {
        buscarModelo(txtBuscaEdFin, grvEdFin, lblTotalEdFin, 2);
        ModalEdFin.Show();
    }

    protected void btnBuscarEmp_Click(object sender, EventArgs e)
    {
        buscarModelo(txtBuscaEmp, grvEmp, lblTotalEmp, 3);
        ModalEmp.Show();
    }
}