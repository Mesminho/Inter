using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CriarPerguntaEmpresarial : System.Web.UI.Page
{
    Mod_modelos modelo; // Cria variavel do tipo Questionario
    Alt_alternativas alternativa; //Cria variavel tipo alternativa
    Per_perguntas pergunta; //Cria variavel tipo questao

    protected void Page_Load(object sender, EventArgs e)
    {

        modelo = (Mod_modelos)Session["modelo"]; //Instancia o obj Questionario, com os valores vindos da pg anterior
        lbl_nomeQuestionario.Text = modelo.NomeModelo; //Passa o nome do Questionario pro label

        if (!Page.IsPostBack)
        {
            mvwEmpresarial.ActiveViewIndex = Convert.ToInt32(ddlTipoPergunta.SelectedValue);
        }

    }

    protected void ddlTipoPergunta_SelectedIndexChanged(object sender, EventArgs e)
    {
        mvwEmpresarial.ActiveViewIndex = Convert.ToInt32(ddlTipoPergunta.SelectedValue);
    }

    protected void btn_novo_Click(object sender, EventArgs e)
    {
        salvaQuestionario();
        Response.Redirect("CriarPerguntaEmpresarial.aspx"); //Recarrega a pagina
    }

    protected void btn_enviar_Click(object sender, EventArgs e)
    {
        salvaQuestionario();
        Session["editar"] = false;        
        Response.Redirect("ConfirmarModelo.aspx"); //Redireciona para confirmar o questionario
    }

    private void salvaQuestionario()
    {
        modelo = (Mod_modelos)Session["modelo"]; //Instancia o obj Questionario, com os valores vindos da pg anterior
        lbl_nomeQuestionario.Text = modelo.NomeModelo; //Passa o nome do Questionario pro label
        pergunta = new Per_perguntas(); // Instancia uma nova questão

        string nomeAlternativa;
        double pontos;

        if (Convert.ToInt32(ddlTipoPergunta.SelectedValue) == 1)
        {
            pergunta.PerguntaPergunta = txb_nomePergunta.Value;

            if (txb_alter1.Value != String.Empty)
            {
                nomeAlternativa = txb_alter1.Value;
                pontos = 0;
                alternativa = new Alt_alternativas(nomeAlternativa, pontos);
                pergunta.Alternativa.Add(alternativa);
            }

            if (txb_alter2.Value != String.Empty)
            {
                nomeAlternativa = txb_alter2.Value;
                pontos = 0;
                alternativa = new Alt_alternativas(nomeAlternativa, pontos);
                pergunta.Alternativa.Add(alternativa);
            }

            if (txb_alter3.Value != String.Empty)
            {
                nomeAlternativa = txb_alter3.Value;
                pontos = 0;
                alternativa = new Alt_alternativas(nomeAlternativa, pontos);
                pergunta.Alternativa.Add(alternativa);
            }

            if (txb_alter4.Value != String.Empty)
            {
                nomeAlternativa = txb_alter4.Value;
                pontos = 0;
                alternativa = new Alt_alternativas(nomeAlternativa, pontos);
                pergunta.Alternativa.Add(alternativa);
            }

            if (txb_alter5.Value != String.Empty)
            {
                nomeAlternativa = txb_alter5.Value;
                pontos = 0;
                alternativa = new Alt_alternativas(nomeAlternativa, pontos);
                pergunta.Alternativa.Add(alternativa);
            }

            if (txb_alter6.Value != String.Empty)
            {
                nomeAlternativa = txb_alter6.Value;
                pontos = 0;
                alternativa = new Alt_alternativas(nomeAlternativa, pontos);
                pergunta.Alternativa.Add(alternativa);
            }

            if (txb_alter7.Value != String.Empty)
            {
                nomeAlternativa = txb_alter7.Value;
                pontos = 0;
                alternativa = new Alt_alternativas(nomeAlternativa, pontos);
                pergunta.Alternativa.Add(alternativa);
            }
        }
        else if (Convert.ToInt32(ddlTipoPergunta.SelectedValue) == 2)
        {
            pergunta.PerguntaPergunta = txb_nomePergunta.Value;

            nomeAlternativa = "Dissertativa";
            pontos = 0;
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa.Add(alternativa);
        }
        else
        {
            Response.Write("<script>alert('Selecione um tipo de questão.')</script>");
            Response.Redirect("CriarPerguntaEmpresarial.aspx");
        }

        modelo.Pergunta.Add(pergunta); //Adiciona o ojb questão ao questionario
        Session["modelo"] = modelo; //Passa o obj modelo para a sessao
    }
}