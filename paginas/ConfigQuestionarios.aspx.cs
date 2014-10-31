using FuncoesBasicas;
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
            ModalPopupExtenderDesc.Hide();

        }
    }

    private void CarregaGrid()
    {
        DataSet ds = Mod_modelosDB.SelectAll(1);
        DataSet ds2 = Mod_modelosDB.SelectEditar(1);
        DataSet dsEF = Mod_modelosDB.SelectAll(2);
        DataSet dsEF2 = Mod_modelosDB.SelectEditar(2);
        DataSet dsEmp = Mod_modelosDB.SelectAll(3);
        DataSet dsEmp2 = Mod_modelosDB.SelectEditar(3);



        FuncoesBasicas.Function.CarregaGrid(ds, grvInvestidorHabilitar, lblTotalInvestidorHabilitar);
        FuncoesBasicas.Function.CarregaGrid(ds2, grvInvestidorEditar, lblTotalInvestidorEditar);
        FuncoesBasicas.Function.CarregaGrid(dsEF, grvEdFinHabilitar, lblTotalEdHabilitar);
        FuncoesBasicas.Function.CarregaGrid(dsEF2, grvEdFinEditar, lblTotalEdEditar);
        FuncoesBasicas.Function.CarregaGrid(dsEmp, grvEmpHabilitar, lblTotalEmpHabilitar);
        FuncoesBasicas.Function.CarregaGrid(dsEmp2, grvEmpEditar, lblTotalEmpEditar);
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



    protected void btn_falso_Click(object sender, EventArgs e)
    {
        ModalPopupExtenderDesc.Show();
        ModalInvestidor.Show();
    }


    //RowCommand da Grid Investidor Habilitar 
    protected void grvInvestidorHabilitar_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Descricao.Text = Function.QuebrarLinha(mod.DescricaoModelo, 70); //Function.QuebrarLinha(mod.DescricaoModelo, 20);
            ModalPopupExtenderDesc.Show();
            ModalInvestidor.Show();

        }

        if (e.CommandName == "Alterar")
        {
            Mod_modelos mod = new Mod_modelos();
            mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Mod_modelosDB mod_db = new Mod_modelosDB();
            if (mod.AtivoModelo == true)
            {

                switch (mod_db.Habilitar(mod, 0))
                {

                    case -2:
                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Status não Alterado.');", true);
                        break;
                    case 0:

                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Modelo Desabilitado com sucesso!');", true);
                        CarregaGrid();
                        break;
                }
            }
            else if (mod.AtivoModelo == false)
            {
                switch (mod_db.Habilitar(mod, 1))
                {
                    case -2:
                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Status não Alterado.');", true);
                        break;
                    case 0:
                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Modelo Habilitado com sucesso.');", true);
                        CarregaGrid();
                        break;
                }
            }
        }
        ModalInvestidor.Show();
    }


    //RowCommand da Grid Investidor Editar 
    protected void grvInvestidorEditar_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Descricao.Text = Function.QuebrarLinha(mod.DescricaoModelo, 70);
            ModalPopupExtenderDesc.Show();
            ModalInvestidor.Show();

        }

        if (e.CommandName == "Editar")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Mod_modelos mod = Mod_modelosDB.Aplicar(id);


            Session.Remove("modelo");

            if (mod != null)
            {
                Session["modelo"] = mod;
                Session["editar"] = true;
                Response.Redirect("ConfirmarModelo.aspx");
            }
            else
            {
                lblTotalInvestidorEditar.Text = "Erro ao selecionar chamado";
            }

        }

    }


    //PageIndex da Grid Investidor Habilitar
    protected void grvInvestidorHabilitar_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvInvestidorHabilitar.PageIndex = e.NewPageIndex;
        CarregaGrid();
        ModalInvestidor.Show();
    }

    //PageIndex da Grid Investidor Editar
    protected void grvInvestidorEditar_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvInvestidorEditar.PageIndex = e.NewPageIndex;
        CarregaGrid();
        ModalInvestidor.Show();
    }


    //RowCommand da Grid Educação Financeira Habilitar
    protected void grvEdFinHabilitar_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Descricao.Text = Function.QuebrarLinha(mod.DescricaoModelo, 70); //Function.QuebrarLinha(mod.DescricaoModelo, 20);
            ModalPopupExtenderDesc.Show();
            ModalEd.Show();

        }

        if (e.CommandName == "Alterar")
        {
            Mod_modelos mod = new Mod_modelos();
            mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Mod_modelosDB mod_db = new Mod_modelosDB();
            if (mod.AtivoModelo == true)
            {

                switch (mod_db.Habilitar(mod, 0))
                {

                    case -2:
                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Status não Alterado.');", true);
                        break;
                    case 0:

                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Modelo Desabilitado com sucesso!');", true);
                        CarregaGrid();
                        break;
                }
            }
            else if (mod.AtivoModelo == false)
            {
                switch (mod_db.Habilitar(mod, 1))
                {
                    case -2:
                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Status não Alterado.');", true);
                        break;
                    case 0:
                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Modelo Habilitado com sucesso.');", true);
                        CarregaGrid();
                        break;
                }
            }
        }
        ModalEd.Show();
    }


    //PageIndex da Grid Educação Financeira Habilitar
    protected void grvEdFinHabilitar_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        grvEdFinHabilitar.PageIndex = e.NewPageIndex;
        CarregaGrid();
        ModalEd.Show();


    }


    //RowCommand da Grid Educação Financeira Editar
    protected void grvEdFinEditar_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Descricao.Text = Function.QuebrarLinha(mod.DescricaoModelo, 70);
            ModalPopupExtenderDesc.Show();
            ModalEd.Show();

        }

        if (e.CommandName == "Editar")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Mod_modelos mod = Mod_modelosDB.Aplicar(id);


            Session.Remove("modelo");

            if (mod != null)
            {
                Session["modelo"] = mod;
                Session["editar"] = true;
                Response.Redirect("ConfirmarModelo.aspx");
            }
            else
            {
                lblTotalEdEditar.Text = "Erro ao selecionar chamado";
            }

        }

    }


    //PageIndex da Grid Educação Financeira Editar
    protected void grvEdFinEditar_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvEdFinEditar.PageIndex = e.NewPageIndex;
        CarregaGrid();
        ModalEd.Show();
    }

    //PageIndex da Grid Empresarial Habilitar
    protected void grvEmpHabilitar_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvEmpHabilitar.PageIndex = e.NewPageIndex;
        CarregaGrid();
        ModalEmpresarial.Show();
    }


    //RowCommand da Grid Empresarial Habilitar
    protected void grvEmpHabilitar_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Descricao.Text = Function.QuebrarLinha(mod.DescricaoModelo, 70); //Function.QuebrarLinha(mod.DescricaoModelo, 20);
            ModalPopupExtenderDesc.Show();
            ModalEmpresarial.Show();

        }

        if (e.CommandName == "Alterar")
        {
            Mod_modelos mod = new Mod_modelos();
            mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Mod_modelosDB mod_db = new Mod_modelosDB();
            if (mod.AtivoModelo == true)
            {

                switch (mod_db.Habilitar(mod, 0))
                {

                    case -2:
                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Status não Alterado.');", true);
                        break;
                    case 0:

                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Modelo Desabilitado com sucesso!');", true);
                        CarregaGrid();
                        break;
                }
            }
            else if (mod.AtivoModelo == false)
            {
                switch (mod_db.Habilitar(mod, 1))
                {
                    case -2:
                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Status não Alterado.');", true);
                        break;
                    case 0:
                        ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Modelo Habilitado com sucesso.');", true);
                        CarregaGrid();
                        break;
                }
            }
        }
        ModalEmpresarial.Show();
    }


    //RowCommand da Grid Empresarial Editar
    protected void grvEmpEditar_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Descricao.Text = Function.QuebrarLinha(mod.DescricaoModelo, 70);
            ModalPopupExtenderDesc.Show();
            ModalEmpresarial.Show();

        }

        if (e.CommandName == "Editar")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Mod_modelos mod = Mod_modelosDB.Aplicar(id);


            Session.Remove("modelo");

            if (mod != null)
            {
                Session["modelo"] = mod;
                Session["editar"] = true;
                Response.Redirect("ConfirmarModelo.aspx");
            }
            else
            {
                lblTotalEmpEditar.Text = "Erro ao selecionar chamado";
            }

        }



    }


    //pageIndex da Grid Empresarial Editar
    protected void grvEmpEditar_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvEmpEditar.PageIndex = e.NewPageIndex;
        CarregaGrid();
        ModalEmpresarial.Show();
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
        buscarModelo(txtBuscaInvestidor, grvInvestidorHabilitar, lblTotalInvestidorHabilitar, 1);
        ModalInvestidor.Show();
    }

    protected void btnBuscarInvestidor2_Click(object sender, EventArgs e)
    {
        buscarModelo(txtBuscaInvestidor2, grvInvestidorEditar, lblTotalInvestidorEditar, 1);
        ModalInvestidor.Show();
    }

    protected void btnBuscarEd_Click(object sender, EventArgs e)
    {
        buscarModelo(txtBuscaEd, grvEdFinHabilitar, lblTotalEdHabilitar, 2);
        ModalEd.Show();
    }


    protected void btnBuscarEd2_Click(object sender, EventArgs e)
    {
        buscarModelo(txtBuscaEd2, grvEdFinEditar, lblTotalEdEditar, 2);
        ModalEd.Show();

    }
    protected void btnBuscarEmp_Click(object sender, EventArgs e)
    {
        buscarModelo(txtBuscaEmp, grvEmpHabilitar, lblTotalEmpHabilitar, 3);
        ModalEmpresarial.Show();
    }
    protected void btnBuscarEmp2_Click(object sender, EventArgs e)
    {
        buscarModelo(txtBuscaEmp2, grvEmpEditar, lblTotalEmpEditar, 3);
        ModalEmpresarial.Show();
    }
}