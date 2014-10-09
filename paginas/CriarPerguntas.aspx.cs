using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CriarPerguntaEd : System.Web.UI.Page
{
    Mod_modelos modelo; // Cria variavel do tipo Questionario
    Alt_alternativas alternativa; //Cria variavel tipo alternativa
    Per_perguntas pergunta; //Cria variavel tipo questao

    protected void Page_Load(object sender, EventArgs e)
    {
        modelo = (Mod_modelos)Session["modelo"]; //Instancia o obj Questionario, com os valores vindos da pg anterior
        lbl_nomeQuestionario.Text = modelo.NomeModelo; //Passa o nome do Questionario pro label
        pergunta = new Per_perguntas(); // Instancia uma nova questão
      
    }

    protected void btn_novo_Click(object sender, EventArgs e)
    {
        salvaQuestionario();
        Response.Redirect("CriarPerguntas.aspx"); //Recarrega a pagina
        
    }
    protected void btn_enviar_Click(object sender, EventArgs e)
    {
        //string script = "<script language='javascript'>alert('Questão guardada com sucesso');</script>";
        //ClientScript.RegisterStartupScript(GetType(), "alerta1", script, false);
        
        salvaQuestionario();
        Response.Redirect("ConfirmarModelo.aspx"); //Redireciona para confirmar o questionario
    }

    //Método para salvar o questionário no array list
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
        Session["modelo"] = modelo; //Passa o obj modelo para a sessao
    }

}