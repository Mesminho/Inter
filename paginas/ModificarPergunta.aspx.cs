using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_ModificarPergunta : System.Web.UI.Page
{
    Mod_modelos modelo; // Cria variavel do tipo Questionario
    Alt_alternativas alternativa; //Cria variavel tipo alternativa
    Per_perguntas pergunta; //Cria variavel tipa questao
    int index;

    protected void Page_Load(object sender, EventArgs e)
    {
        modelo = (Mod_modelos)Session["modelo"]; //Instancia o obj Questionario, com os valores vindos da pg anterior
        lbl_nomeQuestionario.Text = modelo.NomeModelo; //Passa o nome do Questionario pro label
        index = (Int32)Session["index"];
        pergunta = (Per_perguntas)modelo.Pergunta[index];
        if (!IsPostBack)
        {
            valorarCampos();
        }
    }

    protected void btn_novo_Click(object sender, EventArgs e)
    {
        Response.Redirect("ConfirmarModelo.aspx"); //Recarrega a pagina
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

        pergunta.PerguntaPergunta = txb_nomePergunta.Value;

        if (txb_alter1.Text != String.Empty && txb_pontos1.Text != String.Empty)
        {
            nomeAlternativa = txb_alter1.Text;
            pontos = Convert.ToDouble(txb_pontos1.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa[0] = alternativa;
        }

        if (txb_alter2.Text != String.Empty && txb_pontos2.Text != String.Empty)
        {
            nomeAlternativa = txb_alter2.Text;
            pontos = Convert.ToDouble(txb_pontos2.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa[1] = alternativa;
        }

        if (txb_alter3.Text != String.Empty && txb_pontos3.Text != String.Empty)
        {
            nomeAlternativa = txb_alter3.Text;
            pontos = Convert.ToDouble(txb_pontos3.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa[2] = alternativa;
        }

        if (txb_alter4.Text != String.Empty && txb_pontos4.Text != String.Empty)
        {
            nomeAlternativa = txb_alter4.Text;
            pontos = Convert.ToDouble(txb_pontos4.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa[3] = alternativa;
        }
        else
        {
            try
            {
                pergunta.Alternativa.RemoveAt(3);
            }
            catch (Exception)
            {

            }

        }

        if (txb_alter5.Text != String.Empty && txb_pontos5.Text != String.Empty)
        {
            nomeAlternativa = txb_alter5.Text;
            pontos = Convert.ToDouble(txb_pontos5.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa[4] = alternativa;
        }
        else
        {
            try
            {
                pergunta.Alternativa.RemoveAt(4);
            }
            catch (Exception)
            {

            }
        }

        if (txb_alter6.Text != String.Empty && txb_pontos6.Text != String.Empty)
        {
            nomeAlternativa = txb_alter6.Text;
            pontos = Convert.ToDouble(txb_pontos6.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa[5] = alternativa;
        }
        else
        {
            try
            {
                pergunta.Alternativa.RemoveAt(5);
            }
            catch (Exception)
            {

            }
        }

        if (txb_alter7.Text != String.Empty && txb_pontos7.Text != String.Empty)
        {
            nomeAlternativa = txb_alter7.Text;
            pontos = Convert.ToDouble(txb_pontos7.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            pergunta.Alternativa[6] = alternativa;
        }
        else
        {
            try
            {
                pergunta.Alternativa.RemoveAt(6);
            }
            catch (Exception)
            {

            }
        }

        modelo.Pergunta[index] = pergunta; //Adiciona o ojb questão ao questionario
        Session["questionario"] = modelo; //Passa o obj questionario para a sessao
    }

    private void valorarCampos()
    {
        TextBox[] txb_alternativa = new TextBox[7];
        TextBox[] txb_ponto = new TextBox[7];
        Label[] lbl_alternativa = new Label[7];
        Label[] lbl_ponto = new Label[7];

        txb_alternativa[0] = txb_alter1;
        txb_alternativa[1] = txb_alter2;
        txb_alternativa[2] = txb_alter3;
        txb_alternativa[3] = txb_alter4;
        txb_alternativa[4] = txb_alter5;
        txb_alternativa[5] = txb_alter6;
        txb_alternativa[6] = txb_alter7;

        txb_ponto[0] = txb_pontos1;
        txb_ponto[1] = txb_pontos2;
        txb_ponto[2] = txb_pontos3;
        txb_ponto[3] = txb_pontos4;
        txb_ponto[4] = txb_pontos5;
        txb_ponto[5] = txb_pontos6;
        txb_ponto[6] = txb_pontos7;

        lbl_alternativa[0] = lbl_alter1;
        lbl_alternativa[1] = lbl_alter2;
        lbl_alternativa[2] = lbl_alter3;
        lbl_alternativa[3] = lbl_alter4;
        lbl_alternativa[4] = lbl_alter5;
        lbl_alternativa[5] = lbl_alter6;
        lbl_alternativa[6] = lbl_alter7;

        lbl_ponto[0] = lbl_pontos1;
        lbl_ponto[1] = lbl_pontos2;
        lbl_ponto[2] = lbl_pontos3;
        lbl_ponto[3] = lbl_pontos4;
        lbl_ponto[4] = lbl_pontos5;
        lbl_ponto[5] = lbl_pontos6;
        lbl_ponto[6] = lbl_pontos7;



        txb_nomePergunta.Value = pergunta.PerguntaPergunta;

        for (int i = 0; i < pergunta.Alternativa.Count; i++)
        {
            alternativa = (Alt_alternativas)pergunta.Alternativa[i];
            txb_alternativa[i].Text = alternativa.AlternativaAlternativa;
            txb_ponto[i].Text = Convert.ToString(alternativa.PesoAlternativa);
            txb_alternativa[i].Visible = true;
            txb_ponto[i].Visible = true;
            lbl_alternativa[i].Visible = true;
            lbl_ponto[i].Visible = true;
        }

    }
}