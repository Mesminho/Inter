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
        carregaModelo();
        btn_confirmar.Attributes.Add("onclick", "msg();");
    }

    protected void bnt_confirmar_Click(object sender, EventArgs e)
    {
        int idModelo, idPergunta;
        modelo = (Mod_modelos)Session["modelo"];
        idModelo = Mod_modelosDB.Insert(modelo);
        for (int i = 0; i < modelo.Pergunta.Count; i++)
        {
            pergunta = (Per_perguntas)modelo.Pergunta[i];
            pergunta.CodigoModelo = idModelo;
            idPergunta = Per_perguntasDB.Insert(pergunta);
            for (int n = 0; n < pergunta.Alternativa.Count; n++)
            {
                alternativa = (Alt_alternativas)pergunta.Alternativa[n];
                alternativa.PerguntaCodigo = idPergunta;
                Alt_alternativasDB.Insert(alternativa);
            }
        }
        Response.Redirect("Home.aspx");
    }

    private void carregaModelo()
    {
        modelo = (Mod_modelos)Session["modelo"]; //Istancia o obj questionario passando a sessao
        lbl_nomeQuestionario.Text = modelo.NomeModelo;

        for (int i = 0; i < modelo.Pergunta.Count; i++)
        {
            pergunta = (Per_perguntas)modelo.Pergunta[i];
            Label lbl_pergunta = new Label();
            Label lbl_espaco = new Label();
            RadioButtonList rbl_alternativa = new RadioButtonList();
            Button btn_modificar = new Button();
            rbl_alternativa.ID = i.ToString();
            lbl_espaco.Text = "<br/><br/>";
            btn_modificar.CommandArgument = i.ToString();
            btn_modificar.CommandName = "Modificar";
            btn_modificar.Click += btn_modificar_Click;
            lbl_pergunta.Text = pergunta.PerguntaPergunta;
            for (int n = 0; n < pergunta.Alternativa.Count; n++)
            {
                alternativa = (Alt_alternativas)pergunta.Alternativa[n];
                rbl_alternativa.Items.Add(alternativa.AlternativaAlternativa + ", " + alternativa.PesoAlternativa);
            }
            div_confirmar.Controls.Add(lbl_pergunta);
            div_confirmar.Controls.Add(rbl_alternativa);
            div_confirmar.Controls.Add(btn_modificar);
            div_confirmar.Controls.Add(lbl_espaco);
        }
    }

    void btn_modificar_Click(object sender, EventArgs e)
    {
        Button btn_confimar = (Button)sender;
        Session["index"] = Convert.ToInt32(btn_confimar.CommandArgument);
        Response.Redirect("ModificarPergunta.aspx");
    }
  
    protected void bnt_cancelar_Click(object sender, EventArgs e)
    {
        Session["modelo"] = null;
        Response.Redirect("Home.aspx");
    }
}