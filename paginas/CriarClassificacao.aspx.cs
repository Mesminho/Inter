using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CriarClassificacao : System.Web.UI.Page
{
    Mod_modelos modelo;
    Clas_classificacoes classificacao; //Instancia de Classificações

    protected void Page_Load(object sender, EventArgs e)
    {
        modelo = (Mod_modelos)Session["modelo"];
    }
    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        classificacao = new Clas_classificacoes();
        classificacao.NomeClassificacao = "Conservador";
        classificacao.PontoClassificacao = Convert.ToDouble(txtPontuacao.Value);
        classificacao.DescricaoClassificacao = "";
        modelo.Classificacoes.Add(classificacao);
    }
    protected void btnAvancar_Click(object sender, EventArgs e)
    {
        Response.Redirect("CriarPerguntas.aspx");
    }


}