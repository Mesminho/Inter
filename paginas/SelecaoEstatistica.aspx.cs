using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_SelecaoEstatistica : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnConfirmar_Click(object sender, EventArgs e)
    {
        int tipoPesquisa = Convert.ToInt32(ddl_tipoPesquisa.SelectedValue);
        int tipoComparacao = Convert.ToInt32(ddl_comparacao.SelectedValue);
        if (tipoPesquisa == 0)
        {
            switch (tipoComparacao)
            {
                case 0: 
                    break;
                case 1: 
                    break;
                case 2: 
                    break;
                case 3: 
                    break;
                case 4: 
                    break;
                case 5: 
                    break;
                default:
                    break;
            }
        }
        else if (tipoPesquisa == 1)
        {
            switch (tipoComparacao)
            {
                case 0:
                    //Idade
                    break;
                case 1:
                    //Tipo de Visitante
                    break;
                case 2:
                    //Semestre do Aluno
                    break;
                case 3:
                    //Curso do Aluno
                    break;
                case 4:
                    //Sexo
                    break;
                case 5:
                    //Visitante Externo
                    break;
                default:
                    break;
            }
        }

        Response.Redirect("Estatistica.aspx");
    }
    protected void ddl_tipoPesquisa_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddl_tipoPesquisa.SelectedValue.Equals("0"))
        {
            lbl_questionario.Visible = true;
            ddl_questionario.Visible = true;
        }
        else
        {
            lbl_questionario.Visible = false;
            ddl_questionario.Visible = false;
        }
    }
}