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
        string pathChart = "../charts/";
        string pathXml = "../xml/";
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
                    Session["chart"] = pathChart + "MSCombi3D.swf";
                    Session["xml"] = pathXml + "idadePerfil.xml";
                    Response.Redirect("Estatistica.aspx");
                    break;
                case 1:
                    //Tipo de Visitante
                    Session["chart"] = pathChart + "MSCombi3D.swf";
                    Session["xml"] = pathXml + "tipoVisitantePerfil.xml";
                    Response.Redirect("Estatistica.aspx");
                    break;
                case 2:
                    //Semestre do Aluno
                    Session["chart"] = pathChart + "MSCombi3D.swf";
                    Session["xml"] = pathXml + "semestrePerfil.xml";
                    Response.Redirect("Estatistica.aspx");
                    break;
                case 3:
                    //Curso do Aluno
                    Session["chart"] = pathChart + "MSCombi3D.swf";
                    Session["xml"] = pathXml + "cursoPerfil.xml";
                    Response.Redirect("Estatistica.aspx");
                    break;
                case 4:
                    //Sexo
                    Session["chart"] = pathChart + "MSCombi3D.swf";
                    Session["xml"] = pathXml + "sexoPerfil.xml";
                    Response.Redirect("Estatistica.aspx");
                    break;
                case 5:
                    //Visitante Externo
                    Session["chart"] = pathChart + "Doughnut3D.swf";
                    Session["xml"] = pathXml + "perfil.xml";
                    Response.Redirect("Estatistica.aspx");
                    break;
                case 6:
                    //Visitante Interno
                    Session["chart"] = pathChart + "Doughnut3D.swf";
                    Session["xml"] = pathXml + "perfil.xml";
                    Response.Redirect("Estatistica.aspx");
                    break;
                default:
                    Session["chart"] = pathChart + "Doughnut3D.swf";
                    Session["xml"] = pathXml + "perfil.xml";
                    Response.Redirect("Estatistica.aspx");
                    break;
            }
        }

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