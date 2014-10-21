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
        DataSet ds = Mod_modelosDB.SelectAll();
        DataSet ds2 = Mod_modelosDB.SelectNaoEditado();

        FuncoesBasicas.Function.CarregaGrid(ds, grvQ, lblTotal);
        FuncoesBasicas.Function.CarregaGrid(ds2, grvQ2, lblTotal);
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

    protected void btn_falso_Click(object sender, EventArgs e)
    {
        ModalPopupExtenderDesc.Show();
        ModalInvestidor.Show();
    }

    protected void grvQ_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Descricao.Text = mod.DescricaoModelo;
            ModalPopupExtenderDesc.Show();
            ModalInvestidor.Show();

        }

        if (e.CommandName == "Alterar")
        {
            Mod_modelos mod = new Mod_modelos();
            mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Mod_modelosDB mod_db = new Mod_modelosDB();
            if (mod.Habilitado.Equals("Habilitado"))
            {
                
                switch (mod_db.Desabilitar(mod))
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
            if (mod.Habilitado.Equals("Desabilitado"))
            {
                switch (mod_db.Habilitar(mod))
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



    protected void grvQ2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Visualizar")
        {

            Mod_modelos mod = Mod_modelosDB.Select(Convert.ToInt32(e.CommandArgument));
            Descricao.Text = mod.DescricaoModelo;
            ModalPopupExtenderDesc.Show();
            ModalInvestidor.Show();

        }

        if (e.CommandName == "Editar")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            Mod_modelos mod = Mod_modelosDB.Select(id);

            if (mod != null)
            {
                Session["EditarModelo"] = mod;
                Response.Redirect("CriarModeloInvestidor.aspx");
            }
            else
            {
                Label2.Text = "Erro ao selecionar chamado";
            }

        }

    }
}