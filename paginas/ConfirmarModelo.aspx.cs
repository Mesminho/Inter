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
        if (!IsPostBack)
        {
            if (Convert.ToString(Session["Modelo"]) != "")
            {

                btn_confirmar.Visible = false;
                btn_atualizar.Visible = true;

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
        lbl_descricaoModelo.Text = modelo.DescricaoModelo;

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
            Label lbl_descricao = new Label();
            Label lbl_ponto = new Label();

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
            btn_excluir.CommandArgument = i.ToString();

            lbl_titulo.Text = ""+classicacao.NomeClassificacao;
            lbl_descricao.Text = "Descrição: "+classicacao.DescricaoClassificacao;
            lbl_ponto.Text = "Pontuação Máxima: "+classicacao.PontoClassificacao.ToString();
            //css
            lbl_titulo.CssClass = "tituloQuestao";
            lbl_descricao.CssClass = "textoCorrido";
            lbl_ponto.CssClass = "textoCorrido";

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

        Label lblQuestoes = new Label();
        lblQuestoes.Text = "Verifique abaixo todas as questões criadas para esse questionário:<br/>";
        lblQuestoes.CssClass = "texto";
        div_classificacoes.Controls.Add(lblQuestoes);
       

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
        // Mod_modelos mod = (Mod_modelos)Session["EditarModelo"];
        //    mod.NomeModelo = txb_nomeModelo.Value;
        //    mod.DescricaoModelo = txt_descricao.InnerText;


        //    Mod_modelosDB modDB = new Mod_modelosDB();
        //    switch (modDB.Update(mod))
        //    {
        //        case -2:
        //            Label1.Text = "Erro ao editar";
        //            break;
        //        case 0:
        //            ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Atualização realizada com sucesso!');", true);
        //            Label1.Text = "Atualização realizada";

        //            txb_nomeModelo.Value = string.Empty;
        //            txt_descricao.InnerText=string.Empty;

        //            btn_atualizar.Visible = false;
        //            btn_continuar.Visible = true;
        //            break;
        //    }
        //}
    }
}