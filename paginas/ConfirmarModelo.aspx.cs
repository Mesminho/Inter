using FuncoesBasicas;
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
    ArrayList alternativaDel;
    ArrayList perguntaDel;
    ArrayList classificacaoDel;

    protected void Page_Load(object sender, EventArgs e)
    {
        carregaModelo();
        alternativaDel = new ArrayList();
        perguntaDel = new ArrayList();
        classificacaoDel = new ArrayList();
        if (Session["classificacaoDel"] != null)
        {
            classificacaoDel = (ArrayList)Session["classificacaoDel"];
        }
        if (Session["pesrguntaDel"] != null)
        {
            perguntaDel = (ArrayList)Session["perguntaDel"];
        }
        if (Session["alternativaDel"] != null)
        {
            alternativaDel = (ArrayList)Session["alternativaDel"];
        }
        if (!IsPostBack)
        {
            if (Convert.ToBoolean(Session["editar"]))
            {
                btn_confirmar.Visible = false;
                btn_atualizar.Visible = true;
            }
            else
            {
                btn_confirmar.Visible = true;
                btn_atualizar.Visible = false;
            }

            if (modelo.isEmpresarial())
            {
                aside_classificacoes.Visible = false;
                questoesDireita.Style["float"] = "left";
            }

        }


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

        Button btn_modificarModelo = new Button();

        lbl_nomeModelo.Text = modelo.NomeModelo;
        txa_descricaoModelo.Text = modelo.DescricaoModelo;



        btn_modificarModelo.CommandName = "Modificar";
        btn_modificarModelo.Text = "Modificar";
        btn_modificarModelo.CssClass = "botao";
        btn_modificarModelo.Click += btn_modificarModelo_Click;

        div_modelo.Controls.Add(btn_modificarModelo);

        //Carregar classificações
        for (int i = 0; i < modelo.Classificacoes.Count; i++)
        {
            Clas_classificacoes classicacao = (Clas_classificacoes)modelo.Classificacoes[i];
            Label lbl_titulo = new Label();
            //Label lbl_descricao = new Label();
            Label lbl_ponto = new Label();

            TextBox txa_descricao = new TextBox();
            txa_descricao.TextMode = TextBoxMode.MultiLine;
            txa_descricao.Enabled = false;
            txa_descricao.Width = 200;
            txa_descricao.Height = 120;


            Label lbl_espaco = new Label();
            Label lbl_espaco2 = new Label();
            Label lbl_espaco3 = new Label();
            Label lbl_espaco4 = new Label();
            Label lbl_espaco5 = new Label();

            lbl_espaco.Text = "<br/><br/>";
            lbl_espaco2.Text = "<br/>";
            lbl_espaco3.Text = "<br/>";
            lbl_espaco4.Text = "<br/><br/>";
            lbl_espaco5.Text = "<br/><br/>";

            Button btn_modificar = new Button();
            Button btn_excluir = new Button();



            btn_modificar.CommandName = "Modificar";
            btn_modificar.Text = "Modificar";
            btn_modificar.CssClass = "botao";
            btn_modificar.CommandArgument = i.ToString();
            btn_modificar.Click += btn_modificarClassificacao_Click;

            btn_excluir.CommandName = "Excluir";
            btn_excluir.CssClass = "btn-cancelar";
            btn_excluir.Text = "Excluir";
            btn_excluir.CommandArgument = classicacao.CodigoClassificacao.ToString();
            btn_excluir.Click += btn_excluir_classificacao;

            lbl_titulo.Text = classicacao.NomeClassificacao;
            //lbl_descricao.Text = "Descrição: <br/>";
            txa_descricao.Text = classicacao.DescricaoClassificacao;
            lbl_ponto.Text = "Pontuação Máxima: " + classicacao.PontoClassificacao.ToString();
            //css
            lbl_titulo.CssClass = "tituloQuestao";
            //lbl_descricao.CssClass = "textoCorrido";
            txa_descricao.CssClass = "txtArea";
            lbl_ponto.CssClass = "textoCorrido";

            div_classificacoes.Controls.Add(lbl_titulo);
            div_classificacoes.Controls.Add(lbl_espaco2);
            //div_classificacoes.Controls.Add(lbl_descricao);

            div_classificacoes.Controls.Add(txa_descricao);
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
            btn_excluir.CommandArgument = pergunta.CodigoPergunta.ToString();
            btn_excluir.Click += btn_excluir_questao;

            //titulo da questão
            if (modelo.isEmpresarial())
            {
                lbl_pergunta.Text = Function.QuebrarLinha(pergunta.PerguntaPergunta, 56);
            }
            else
                lbl_pergunta.Text = Function.QuebrarLinha(pergunta.PerguntaPergunta, 70);

            lbl_pergunta.CssClass = "tituloQuestao";

            for (int n = 0; n < pergunta.Alternativa.Count; n++)
            {
                alternativa = (Alt_alternativas)pergunta.Alternativa[n];
                if (modelo.isEmpresarial())
                {
                    rbl_alternativa.Items.Add(alternativa.AlternativaAlternativa);
                }
                else
                    rbl_alternativa.Items.Add(alternativa.AlternativaAlternativa + "; Peso: " + alternativa.PesoAlternativa);
            }

            if (i % 2 != 0)
            {
                questoesDireita.Controls.Add(lbl_pergunta);
                questoesDireita.Controls.Add(rbl_alternativa);
                questoesDireita.Controls.Add(lbl_espaco2);
                questoesDireita.Controls.Add(btn_excluir);
                questoesDireita.Controls.Add(btn_modificar);
                questoesDireita.Controls.Add(lbl_espaco);

            }
            else
            {
                questoesEsquerda.Controls.Add(lbl_pergunta);
                questoesEsquerda.Controls.Add(rbl_alternativa);
                questoesEsquerda.Controls.Add(lbl_espaco2);
                questoesEsquerda.Controls.Add(btn_excluir);
                questoesEsquerda.Controls.Add(btn_modificar);
                questoesEsquerda.Controls.Add(lbl_espaco);

            }

        }
    }

    void btn_excluir_questao(object sender, EventArgs e)
    {
        Button btn_excluir = (Button)sender;
        perguntaDel.Add(Convert.ToInt32(btn_excluir.CommandArgument));
        modelo.Pergunta.RemoveAt(Convert.ToInt32(btn_excluir.CommandArgument));
        Session["modelo"] = modelo;
        Session["perguntaDel"] = perguntaDel;
        Response.Redirect("ConfirmarModelo.aspx");
    }

    void btn_excluir_classificacao(object sender, EventArgs e)
    {
        Button btn_excluir = (Button)sender;
        classificacaoDel.Add(Convert.ToInt32(btn_excluir.CommandArgument));
        modelo.Classificacoes.RemoveAt(Convert.ToInt32(btn_excluir.CommandArgument));
        Response.Cache.SetNoStore();
        Session["modelo"] = modelo;
        Session["classificacaoDel"] = classificacaoDel;
        Response.Redirect("ConfirmarModelo.aspx");
    }

    void btn_modificar_Click(object sender, EventArgs e)
    {
        Button btn_confimar = (Button)sender;
        Session["index"] = Convert.ToInt32(btn_confimar.CommandArgument);
        Response.Redirect("ModificarPergunta.aspx");
    }

    void btn_modificarModelo_Click(object sender, EventArgs e)
    {
        Button btn_confimar = (Button)sender;
        Response.Redirect("ModificarModelo.aspx");
    }

    void btn_modificarClassificacao_Click(object sender, EventArgs e)
    {
        Button btn_confimar = (Button)sender;
        Session["index"] = Convert.ToInt32(btn_confimar.CommandArgument);
        Response.Redirect("ModificarClassificacao.aspx");
    }

    protected void bnt_cancelar_Click(object sender, EventArgs e)
    {
        Session["modelo"] = null;
        Response.Redirect("Home.aspx");
    }
    protected void btn_atualizar_Click(object sender, EventArgs e)
    {
        string script;

        int idModelo, idPergunta;
        modelo = (Mod_modelos)Session["modelo"];
        idModelo = Mod_modelosDB.Update(modelo);

        if (idModelo != -2)
        {
            for (int i = 0; i < modelo.Pergunta.Count; i++)
            {
                pergunta = (Per_perguntas)modelo.Pergunta[i];

                idPergunta = Per_perguntasDB.Update(pergunta);
                for (int n = 0; n < pergunta.Alternativa.Count; n++)
                {
                    alternativa = (Alt_alternativas)pergunta.Alternativa[n];

                    if (alternativa.CodigoAlternativa == 0)
                    {

                        Alt_alternativasDB.Insert(alternativa);
                    }
                    else
                    {
                        Alt_alternativasDB.Update(alternativa);
                    }
                }
            }
            for (int i = 0; i < modelo.Classificacoes.Count; i++)
            {
                Clas_classificacoes classificacao = new Clas_classificacoes();
                Moc_modeloClassificacao moc = new Moc_modeloClassificacao();
                classificacao = (Clas_classificacoes)modelo.Classificacoes[i];
                classificacao.CodigoClassificacao = Clas_classificacoesDB.Update(classificacao);

            }
            for (int i = 0; i < classificacaoDel.Count; i++)
            {
                Clas_classificacoesDB.Delete(Convert.ToInt32(classificacaoDel[i]));
            }
            for (int i = 0; i < perguntaDel.Count; i++)
            {
                Per_perguntasDB.Delete(Convert.ToInt32(perguntaDel[i]));
            }
            for (int i = 0; i < alternativaDel.Count; i++)
            {
                Alt_alternativasDB.Delete(Convert.ToInt32(alternativaDel[i]));
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
        Response.Redirect("home.aspx");
    }
}