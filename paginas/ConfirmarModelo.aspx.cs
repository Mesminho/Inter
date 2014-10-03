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
            ClientScript.RegisterStartupScript(GetType(), "alerta1", script, false);
            //Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "alert", script); 

        }
        else
        {
            script = "<script language='javascript'>alert('USER Deleted Sucessfully');</script>";
            ClientScript.RegisterStartupScript(GetType(), "alerta2", script, false);
            //Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "alert", script); 
        }
        Response.Redirect("Home.aspx");
    }

    private void carregaModelo()
    {
        modelo = (Mod_modelos)Session["modelo"]; //Istancia o obj questionario passando a sessao
        lbl_nomeQuestionario.Text = modelo.NomeModelo;

        

        //Carregar classificações
        for (int i = 0; i < modelo.Classificacoes.Count; i++)
        {
            Clas_classificacoes classicacao = (Clas_classificacoes)modelo.Classificacoes[i];
            Label lbl_titulo = new Label();
            Label lbl_descricao = new Label();
            Label lbl_ponto = new Label();

            Label lbl_espaco = new Label();
            Label lbl_espaco2 = new Label();
            Label lbl_espaco3 = new Label();
            Label lbl_espaco4 = new Label();
            Label lbl_espaco5 = new Label();

            lbl_espaco.Text = "<br/><br/><br/>";
            lbl_espaco2.Text = "<br/>";
            lbl_espaco3.Text = "<br/>";
            lbl_espaco4.Text = "<br/><br/>";
            lbl_espaco5.Text = "<br/><br/>";

            Button btn_modificar = new Button();
            Button btn_excluir = new Button();

            btn_modificar.CommandName = "Modificar";
            btn_modificar.Text = "Modificar";
            btn_modificar.CssClass = "botao";

            btn_excluir.CommandName = "Excluir";
            btn_excluir.CssClass = "btn-cancelar";
            btn_excluir.Text = "Excluir";

            lbl_titulo.Text = "Titulo: "+classicacao.NomeClassificacao;
            lbl_descricao.Text = "Descrição: "+classicacao.DescricaoClassificacao;
            lbl_ponto.Text = "Pontos: "+classicacao.PontoClassificacao.ToString();
            btn_modificar.CommandArgument = i.ToString();
            btn_excluir.CommandArgument = i.ToString();

            div_classificacoes.Controls.Add(lbl_titulo);
            div_classificacoes.Controls.Add(lbl_espaco2);
            div_classificacoes.Controls.Add(lbl_descricao);
            div_classificacoes.Controls.Add(lbl_espaco3);
            div_classificacoes.Controls.Add(lbl_ponto);
            div_classificacoes.Controls.Add(lbl_espaco4);
            div_classificacoes.Controls.Add(btn_excluir);
            div_classificacoes.Controls.Add(btn_modificar);
            div_classificacoes.Controls.Add(lbl_espaco);

        }

        //Carregar questões
        for (int i = 0; i < modelo.Pergunta.Count; i++)
        {
            pergunta = (Per_perguntas)modelo.Pergunta[i];

            Label lbl_pergunta = new Label();
            RadioButtonList rbl_alternativa = new RadioButtonList();

            Label lbl_espaco = new Label();
            Label lbl_espaco2 = new Label();

            lbl_espaco.Text = "<br/><br/>";
            lbl_espaco2.Text = "<br/>";

            Button btn_modificar = new Button();
            Button btn_excluir = new Button();

            //lista de alternativas
            rbl_alternativa.ID = i.ToString();
            rbl_alternativa.CssClass = "alternativa";

            //botão modificar questão
            btn_modificar.CommandName = "Modificar";
            btn_modificar.Text = "Modificar";
            btn_modificar.CssClass = "botao";
            btn_modificar.CommandArgument = i.ToString();
            btn_modificar.Click += btn_modificar_Click;

            //botão excluir
            btn_excluir.CommandName = "Excluir";
            btn_excluir.CssClass = "btn-cancelar";
            btn_excluir.Text = "Excluir";

            //titulo da questão
            lbl_pergunta.Text = pergunta.PerguntaPergunta;
            lbl_pergunta.CssClass = "tituloQuestao";

            for (int n = 0; n < pergunta.Alternativa.Count; n++)
            {
                alternativa = (Alt_alternativas)pergunta.Alternativa[n];
                rbl_alternativa.Items.Add(alternativa.AlternativaAlternativa + "; Peso: " + alternativa.PesoAlternativa);
            }

            div_questoes.Controls.Add(lbl_pergunta);
            div_questoes.Controls.Add(rbl_alternativa);
            div_questoes.Controls.Add(lbl_espaco2);
            div_questoes.Controls.Add(btn_excluir);
            div_questoes.Controls.Add(btn_modificar);
            div_questoes.Controls.Add(lbl_espaco);

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