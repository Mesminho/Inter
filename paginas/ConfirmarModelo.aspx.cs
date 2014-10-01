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
        btn_cancelar.Attributes.Add("onclick", "cancelar()");
    }

    protected void bnt_confirmar_Click(object sender, EventArgs e)
    {
        string script;

        int idModelo, idPergunta;
        modelo = (Mod_modelos)Session["modelo"];
        idModelo = Mod_modelosDB.Insert(modelo);
        modelo.CodigoModelo = idModelo;
        if (idModelo != -2)
        {
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
            for (int i = 0; i < modelo.Classificacoes.Count; i++)
            {
                Clas_classificacoes classificacao = new Clas_classificacoes();
                Moc_modeloClassificacao moc = new Moc_modeloClassificacao();
                classificacao = (Clas_classificacoes)modelo.Classificacoes[i];
                classificacao.CodigoClassificacao = Clas_classificacoesDB.Insert(classificacao);
                moc.Classificacao = classificacao;
                moc.Modelo = modelo;
                Moc_modeloClassificacaoDB.Insert(moc);
            }
            script = "<script language='javascript'>alert('USER Deleted Sucessfully');</script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "alerta", script, true);
            
        }
        else
        {
            //ClientScript.RegisterStartupScript(GetType(), "alerta2", "alert('Cadastro Não Realizado!');", true);
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
            Button btn_excluir = new Button();
            //lista de alternativas
            rbl_alternativa.ID = i.ToString();
            rbl_alternativa.CssClass = "alternativa";
            //botão modificar questão
            btn_modificar.CommandArgument = i.ToString();
            btn_modificar.CommandName = "Modificar";
            btn_modificar.CssClass = "botao";
            btn_modificar.Text = "Modificar";
            lbl_espaco.Text = "<br/><br/><br/>";
            btn_modificar.Text = "Modificar";
            btn_modificar.CssClass = "botao";
            btn_modificar.CommandArgument = i.ToString();
            btn_modificar.Click += btn_modificar_Click;
            //botão excluir
            btn_excluir.CssClass = "btn-cancelar";
            btn_excluir.Text = "Excluir";
            //titulo da questão
            lbl_pergunta.Text = pergunta.PerguntaPergunta;
            lbl_pergunta.CssClass = "tituloQuestao";
            lbl_espaco.Text = "<br/><br/>";
            for (int n = 0; n < pergunta.Alternativa.Count; n++)
            {
                alternativa = (Alt_alternativas)pergunta.Alternativa[n];
                rbl_alternativa.Items.Add(alternativa.AlternativaAlternativa + "; Peso: " + alternativa.PesoAlternativa);
            }
            div_confirmar.Controls.Add(lbl_pergunta);
            div_confirmar.Controls.Add(rbl_alternativa);
            div_confirmar.Controls.Add(btn_excluir);
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