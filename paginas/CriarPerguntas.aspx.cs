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
    Per_perguntas pergunta; //Cria variavel tipa questao
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

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    private void salvaQuestionario()
    {
        string nomeAlternativa;
        double pontos;

        pergunta.PerguntaPergunta = txb_nomePergunta.Text;

        if (txb_alter1.Text != String.Empty && txb_pontos1.Text != String.Empty)
        {
            nomeAlternativa = txb_alter1.Text;
            pontos = Convert.ToDouble(txb_pontos1.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter2.Text != String.Empty && txb_pontos2.Text != String.Empty)
        {
            nomeAlternativa = txb_alter2.Text;
            pontos = Convert.ToDouble(txb_pontos2.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter3.Text != String.Empty && txb_pontos3.Text != String.Empty)
        {
            nomeAlternativa = txb_alter3.Text;
            pontos = Convert.ToDouble(txb_pontos3.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter4.Text != String.Empty && txb_pontos4.Text != String.Empty)
        {
            nomeAlternativa = txb_alter4.Text;
            pontos = Convert.ToDouble(txb_pontos4.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter5.Text != String.Empty && txb_pontos5.Text != String.Empty)
        {
            nomeAlternativa = txb_alter5.Text;
            pontos = Convert.ToDouble(txb_pontos5.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter6.Text != String.Empty && txb_pontos6.Text != String.Empty)
        {
            nomeAlternativa = txb_alter6.Text;
            pontos = Convert.ToDouble(txb_pontos6.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        if (txb_alter7.Text != String.Empty && txb_pontos7.Text != String.Empty)
        {
            nomeAlternativa = txb_alter7.Text;
            pontos = Convert.ToDouble(txb_pontos7.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }

        modelo.Pergunta.Add(pergunta); //Adiciona o ojb questão ao questionario
        Session["questionario"] = modelo; //Passa o obj questionario para a sessao
    }

    protected void txb_alter3_TextChanged(object sender, EventArgs e)
    {
        txb_alter4.Visible = true;
        txb_pontos4.Visible = true;
        lbl_alter4.Visible = true;
        lbl_pontos4.Visible = true;
    }
    protected void txb_alter4_TextChanged(object sender, EventArgs e)
    {
        txb_alter5.Visible = true;
        txb_pontos5.Visible = true;
        lbl_alter5.Visible = true;
        lbl_pontos5.Visible = true;
    }
    protected void txb_alter5_TextChanged(object sender, EventArgs e)
    {
        txb_alter6.Visible = true;
        txb_pontos6.Visible = true;
        lbl_alter6.Visible = true;
        lbl_pontos6.Visible = true;
    }
    protected void txb_alter6_TextChanged(object sender, EventArgs e)
    {
        txb_alter7.Visible = true;
        txb_pontos7.Visible = true;
        lbl_alter7.Visible = true;
        lbl_pontos7.Visible = true;
    }
}