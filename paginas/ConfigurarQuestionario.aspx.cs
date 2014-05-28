using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_ConfigurarQuestionario : System.Web.UI.Page
{
    protected string hab;
    protected string des;
    protected void Page_Load(object sender, EventArgs e)
    {
        btn_habilitar.Attributes.Add("onclick", "msg();");
    }
    protected void ltb_questionarioDesab_SelectedIndexChanged(object sender, EventArgs e)
    {
        btn_habilitar.Text = "Habilitar";
    }
    protected void ltb_questionarioHab_SelectedIndexChanged(object sender, EventArgs e)
    {
        btn_habilitar.Text = "Desabilitar";
    }
    protected void btn_habilitar_Click(object sender, EventArgs e)
    {
        hab = ltb_questionarioHab.SelectedValue;
        des = ltb_questionarioDesab.SelectedValue;
        if (btn_habilitar.Text.Equals("Desabilitar"))
        {
            ltb_questionarioDesab.Items.Add(hab);
            ltb_questionarioHab.Items.Remove(hab);
        }
        else
        {
            ltb_questionarioHab.Items.Add(des);
            ltb_questionarioDesab.Items.Remove(des);
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        lbl_principal.Text = ltb_questionarioPrincipal.SelectedValue;
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Mod_modelos modelo = new Mod_modelos();
        Per_perguntas pergunta;
        Alt_alternativas alternativa;

        modelo.NomeModelo = "Questionário de análise de perfil do investidor 03";
        pergunta = new Per_perguntas();
        pergunta.PerguntaPergunta = "Quantos anos você tem?";
        alternativa = new Alt_alternativas("20 anos", 10);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("25 anos", 10);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("30 anos", 10);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("35 anos", 10);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("40 anos", 10);
        pergunta.Alternativa.Add(alternativa);

        modelo.Pergunta.Add(pergunta);


        pergunta = new Per_perguntas();
        pergunta.PerguntaPergunta = "Quantos filhos você tem?";
        alternativa = new Alt_alternativas("0", 10);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("1", 20);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("2", 4);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("3", 15);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("mais de 4", 9);
        pergunta.Alternativa.Add(alternativa);

        modelo.Pergunta.Add(pergunta);


        pergunta = new Per_perguntas();
        pergunta.PerguntaPergunta = "Qual o seu nome";
        alternativa = new Alt_alternativas("Maria", 10);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("Gabriel", 20);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("Rodrigo", 4);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("João", 15);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("Nenhuma das alternativas", 9);
        pergunta.Alternativa.Add(alternativa);

        modelo.Pergunta.Add(pergunta);


        pergunta = new Per_perguntas();
        pergunta.PerguntaPergunta = "Qual sua cidade";
        alternativa = new Alt_alternativas("Taubaté", 10);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("Guara", 20);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("Pinda", 4);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("Nenhuma das alternativas", 15);
        pergunta.Alternativa.Add(alternativa);

        modelo.Pergunta.Add(pergunta);


        pergunta = new Per_perguntas();
        pergunta.PerguntaPergunta = "Qual sua média salarial";
        alternativa = new Alt_alternativas("1000", 10);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("1500", 20);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("mais de2000", 4);
        pergunta.Alternativa.Add(alternativa);

        modelo.Pergunta.Add(pergunta);


        pergunta = new Per_perguntas();
        pergunta.PerguntaPergunta = "Qual poncentagem dos seus lucros você investiria por mes";
        alternativa = new Alt_alternativas("0", 10);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("10", 20);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("20", 4);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("30", 15);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("40", 9);
        pergunta.Alternativa.Add(alternativa);
        alternativa = new Alt_alternativas("50", 9);
        pergunta.Alternativa.Add(alternativa);

        modelo.Pergunta.Add(pergunta);


        Session["modelo"] = modelo;
        Response.Redirect("ConfirmarModelo.aspx");
    }
}