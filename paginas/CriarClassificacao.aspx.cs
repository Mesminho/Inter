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
        criarTabelaClassificacoes();
    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        adicionarClassificacao();
        Response.Redirect("CriarClassificacao.aspx");
    }
    protected void btnAvancar_Click(object sender, EventArgs e)
    {
        adicionarClassificacao();
        Response.Redirect("CriarPerguntas.aspx");
    }

    private void adicionarClassificacao()
    {
        classificacao = new Clas_classificacoes();
        classificacao.NomeClassificacao = txtTitulo.Text;
        classificacao.PontoClassificacao = Convert.ToDouble(txtPontuacao.Value);
        classificacao.DescricaoClassificacao = txtClassificacao.Value;
        modelo.Classificacoes.Add(classificacao);
        Session["modelo"] = modelo;
    }

    private void criarTabelaClassificacoes()
    {

        Mod_modelos modelo = (Mod_modelos)Session["modelo"];


        Tabela.Text = "<Table class='Grid' style='text-align: center'><tr><th>Título \t</th><th>Descrição</th><th>Pontuação Máxima</th></tr>";
        for (int i = 0; i < modelo.Classificacoes.Count; i++)
        {
            Clas_classificacoes clas = (Clas_classificacoes)modelo.Classificacoes[i];
            Tabela.Text += "<tr><td>" + clas.NomeClassificacao + "</td><td>" + clas.DescricaoClassificacao + "</td><td>" + clas.PontoClassificacao + "</td></tr>";
        }
        Tabela.Text += "</table>";

    }


}