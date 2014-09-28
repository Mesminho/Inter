using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FuncoesBasicas;
using System.Collections;

public partial class paginas_CriarQuestionario : System.Web.UI.Page
{
    Mod_modelos modelo = new Mod_modelos(); //Instancia o Objeto Questionario
    Clas_classificacoes classificacao; //Instancia de Classificações
    

    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet ds = Mod_modelosDB.SelectAll_Evento();
    }

    protected void btn_continuar_Click(object sender, EventArgs e)
    {
        modelo.NomeModelo = txb_nomeModelo.Value; //Passa o texto do textBox Para o obj Questionario
        modelo.TipoModelo = 1;
        modelo.DescricaoModelo = txt_descricao.Value;


        //Perfil Conservador
        classificacao = new Clas_classificacoes();
        classificacao.NomeClassificacao = "Conservador";
        classificacao.PontoClassificacao = Convert.ToDouble(txtPontuacaoConservador.Value);
        classificacao.DescricaoClassificacao = "";
        modelo.Classificacoes.Add(classificacao);

        //Perfil Moderado
        classificacao = new Clas_classificacoes();
        classificacao.NomeClassificacao = "Moderado";
        classificacao.PontoClassificacao = Convert.ToDouble(txtPontuacaoModerado.Value);
        classificacao.DescricaoClassificacao = "";
        modelo.Classificacoes.Add(classificacao);

        //Perfil Agressivo
        classificacao = new Clas_classificacoes();
        classificacao.NomeClassificacao = "Agressivo";
        classificacao.PontoClassificacao = Convert.ToDouble(txtPontuacaoAgressivo.Value);
        classificacao.DescricaoClassificacao = "";
        modelo.Classificacoes.Add(classificacao);

        Session["modelo"] = modelo; //Passa o obj Questionario para sessao
        Response.Redirect("CriarPerguntas.aspx"); //Redireciona para pagina de criar perguntas
    }
 
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {

    }
}