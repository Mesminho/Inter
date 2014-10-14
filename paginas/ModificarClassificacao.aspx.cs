using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_ModificarClassificacao : System.Web.UI.Page
{
    Mod_modelos modelo; // Cria variavel do tipo Questionario
    Clas_classificacoes classificacao;
    Clas_classificacoes classificacaoN;

    int index;

    protected void Page_Load(object sender, EventArgs e)
    {
        modelo = (Mod_modelos)Session["modelo"];
        index = (Int32)Session["index"];
        classificacao = (Clas_classificacoes)modelo.Classificacoes[index];
        if (!IsPostBack)
        {
            valorarCampos();
        }
    }

    private void salvarClassificacao()
    {
        classificacaoN = new Clas_classificacoes();
        classificacaoN.NomeClassificacao = txtTitulo.Text;
        classificacaoN.DescricaoClassificacao = txtClassificacao.Value;
        classificacaoN.PontoClassificacao = Convert.ToDouble(txtPontuacao.Value);
        modelo.Classificacoes[index] = classificacaoN;
        Session["modelo"] = modelo;
    }

    private void valorarCampos()
    {
        txtTitulo.Text = classificacao.NomeClassificacao;
        txtClassificacao.Value = classificacao.DescricaoClassificacao;
        txtPontuacao.Value = classificacao.PontoClassificacao.ToString();
    }
    protected void btnConfirmar_Click(object sender, EventArgs e)
    {
        salvarClassificacao();
        Response.Redirect("ConfirmarModelo.aspx");
    }
    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("ConfirmarModelo.aspx");
    }
}