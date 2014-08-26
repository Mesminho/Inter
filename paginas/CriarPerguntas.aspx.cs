using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CriarQuestao : System.Web.UI.Page
{
    Mod_modelos modelo; // Cria variavel do tipo Questionario
    Alt_alternativas alternativa; //Cria variavel tipo alternativa
    Per_perguntas pergunta; //Cria variavel tipo questao
    int valor = 0; //Instancia o contador de alternativas
    string Values; //Instancia variavel para valores dos campos dinamicos
    int contador = 0; //Verifica a quandtidade de questões.

    protected void Page_Load(object sender, EventArgs e)
    {
        modelo = (Mod_modelos)Session["modelo"]; //Instancia o obj Questionario, com os valores vindos da pg anterior
        pergunta = new Per_perguntas(); // Instancia uma nova questão
        lbl_nomeQuestionario.Text = modelo.NomeModelo; //Passa o nome do Questionario pro label
    }
    protected void btn_novo_Click(object sender, EventArgs e)
    {
        salvaQuestionario();
        Response.Redirect("CriarPerguntas.aspx"); //Recarrega a pagina
    }
    protected void btn_enviar_Click(object sender, EventArgs e)
    {
        salvaQuestionario();
        Response.Redirect("ConfirmarModelo.aspx"); //Redireciona para confirmar o questionario
    }

 

    private void salvaQuestionario()
    {
        string nomeAlternativa;
        double pontos;

        pergunta.PerguntaPergunta = txb_nomePergunta.Value;

        if (txb_alter1.Value != String.Empty && txb_pontos1.Value != String.Empty)
        {
            nomeAlternativa = txb_alter1.Value;
            pontos = Convert.ToDouble(txb_pontos1.Value);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter2.Value != String.Empty && txb_pontos2.Value != String.Empty)
        {
            nomeAlternativa = txb_alter2.Value;
            pontos = Convert.ToDouble(txb_pontos2.Value);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter3.Value != String.Empty && txb_pontos3.Value != String.Empty)
        {
            nomeAlternativa = txb_alter3.Value;
            pontos = Convert.ToDouble(txb_pontos3.Value);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter4.Value != String.Empty && txb_pontos4.Value != String.Empty)
        {
            nomeAlternativa = txb_alter4.Value;
            pontos = Convert.ToDouble(txb_pontos4.Value);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter5.Value != String.Empty && txb_pontos5.Value != String.Empty)
        {
            nomeAlternativa = txb_alter5.Value;
            pontos = Convert.ToDouble(txb_pontos5.Value);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter6.Value != String.Empty && txb_pontos6.Value != String.Empty)
        {
            nomeAlternativa = txb_alter6.Value;
            pontos = Convert.ToDouble(txb_pontos6.Value);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter7.Value != String.Empty && txb_pontos7.Value != String.Empty)
        {
            nomeAlternativa = txb_alter7.Value;
            pontos = Convert.ToDouble(txb_pontos7.Value);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        modelo.Pergunta.Add(pergunta); //Adiciona o ojb questão ao questionario
        Session["questionario"] = modelo; //Passa o obj questionario para a sessao
    }

    //protected void txb_alter3_TextChanged(object sender, EventArgs e)
    //{
    //    txb_alter4.Visible = true;
    //    txb_pontos4.Visible = true;
    //    lbl_alter4.Visible = true;
    //    lbl_pontos4.Visible = true;
    //}
    //protected void txb_alter4_TextChanged(object sender, EventArgs e)
    //{
    //    txb_alter5.Visible = true;
    //    txb_pontos5.Visible = true;
    //    lbl_alter5.Visible = true;
    //    lbl_pontos5.Visible = true;
    //}
    //protected void txb_alter5_TextChanged(object sender, EventArgs e)
    //{
    //    txb_alter6.Visible = true;
    //    txb_pontos6.Visible = true;
    //    lbl_alter6.Visible = true;
    //    lbl_pontos6.Visible = true;
    //}
    //protected void txb_alter6_TextChanged(object sender, EventArgs e)
    //{
    //    txb_alter7.Visible = true;
    //    txb_pontos7.Visible = true;
    //    lbl_alter7.Visible = true;
    //    lbl_pontos7.Visible = true;
    //}

}