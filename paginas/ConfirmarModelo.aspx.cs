using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_ConfirmarQuestionario : System.Web.UI.Page
{
    Mod_modelos modelo;
    Per_perguntas pergunta;
    Alt_alternativas alternativa;
    protected void Page_Load(object sender, EventArgs e)
    {
        modelo = (Mod_modelos)Session["modelo"]; //Istancia o obj questionario passando a sessao
        lbl_nomeQuestionario.Text = modelo.NomeModelo;

        Label[] lbl_pergunta = new Label[15];
        RadioButtonList[] rbl_alternativa = new RadioButtonList[15];

        lbl_pergunta[0] = lbl_pergunta0;
        lbl_pergunta[1] = lbl_pergunta1;
        lbl_pergunta[2] = lbl_pergunta2;
        lbl_pergunta[3] = lbl_pergunta3;
        lbl_pergunta[4] = lbl_pergunta4;
        lbl_pergunta[5] = lbl_pergunta5;
        lbl_pergunta[6] = lbl_pergunta6;
        lbl_pergunta[7] = lbl_pergunta7;
        lbl_pergunta[8] = lbl_pergunta8;
        lbl_pergunta[9] = lbl_pergunta9;
        lbl_pergunta[10] = lbl_pergunta10;
        lbl_pergunta[11] = lbl_pergunta11;
        lbl_pergunta[12] = lbl_pergunta12;
        lbl_pergunta[13] = lbl_pergunta13;
        lbl_pergunta[14] = lbl_pergunta14;

        rbl_alternativa[0] = rbl_0;
        rbl_alternativa[1] = rbl_1;
        rbl_alternativa[2] = rbl_2;
        rbl_alternativa[3] = rbl_3;
        rbl_alternativa[4] = rbl_4;
        rbl_alternativa[5] = rbl_5;
        rbl_alternativa[6] = rbl_6;
        rbl_alternativa[7] = rbl_7;
        rbl_alternativa[8] = rbl_8;
        rbl_alternativa[9] = rbl_9;
        rbl_alternativa[10] = rbl_10;
        rbl_alternativa[11] = rbl_11;
        rbl_alternativa[12] = rbl_12;
        rbl_alternativa[13] = rbl_13;
        rbl_alternativa[14] = rbl_14;
        

        for (int i = 0; i < rbl_alternativa.Length; i++)
        {
            rbl_alternativa[i].Items.Clear();
        }

        for (int i = 0; i < modelo.Pergunta.Count; i++)
        {
            pergunta = (Per_perguntas)modelo.Pergunta[i];
            lbl_pergunta[i].Text = pergunta.PerguntaPergunta;
            for (int n = 0; n < pergunta.Alternativa.Count; n++)
            {
                alternativa = (Alt_alternativas)pergunta.Alternativa[n];
                rbl_alternativa[i].Items.Add(alternativa.AlternativaAlternativa);
            }
            rbl_alternativa[i].Visible = true;
            lbl_pergunta[i].Visible = true;
        }
    }
    protected void bnt_confirmar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Confirmado.aspx");
    }
}