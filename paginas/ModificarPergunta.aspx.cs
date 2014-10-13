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
    Per_perguntas perguntaN;
    int index;

    protected void Page_Load(object sender, EventArgs e)
    {
        modelo = (Mod_modelos)Session["modelo"]; //Instancia o obj Questionario, com os valores vindos da pg anterior
        lbl_nomeQuestionario.Text = modelo.NomeModelo; //Passa o nome do Questionario pro label
        index = (Int32)Session["index"];
        pergunta = (Per_perguntas)modelo.Pergunta[index];
        perguntaN = new Per_perguntas();
        if (!IsPostBack)
        {
            valorarCampos();
            validarEmpresarial();

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

        perguntaN.PerguntaPergunta = txb_nomePergunta.Value;

        if (txb_alter1.Text != String.Empty && txb_pontos1.Text != String.Empty)
        {
            nomeAlternativa = txb_alter1.Text;
            pontos = Convert.ToDouble(txb_pontos1.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            perguntaN.Alternativa.Add(alternativa);
        }

        if (txb_alter2.Text != String.Empty && txb_pontos2.Text != String.Empty)
        {
            nomeAlternativa = txb_alter2.Text;
            pontos = Convert.ToDouble(txb_pontos2.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            perguntaN.Alternativa.Add(alternativa);
        }

        if (txb_alter3.Text != String.Empty && txb_pontos3.Text != String.Empty)
        {
            nomeAlternativa = txb_alter3.Text;
            pontos = Convert.ToDouble(txb_pontos3.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            perguntaN.Alternativa.Add(alternativa);
        }

        if (txb_alter4.Text != String.Empty && txb_pontos4.Text != String.Empty)
        {
            nomeAlternativa = txb_alter4.Text;
            pontos = Convert.ToDouble(txb_pontos4.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            perguntaN.Alternativa.Add(alternativa);
        }

        if (txb_alter5.Text != String.Empty && txb_pontos5.Text != String.Empty)
        {
            nomeAlternativa = txb_alter5.Text;
            pontos = Convert.ToDouble(txb_pontos5.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            perguntaN.Alternativa.Add(alternativa);
        }

        if (txb_alter6.Text != String.Empty && txb_pontos6.Text != String.Empty)
        {
            nomeAlternativa = txb_alter6.Text;
            pontos = Convert.ToDouble(txb_pontos6.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            perguntaN.Alternativa.Add(alternativa);
        }

        if (txb_alter7.Text != String.Empty && txb_pontos7.Text != String.Empty)
        {
            nomeAlternativa = txb_alter7.Text;
            pontos = Convert.ToDouble(txb_pontos7.Text);
            alternativa = new Alt_alternativas(nomeAlternativa, pontos);
            perguntaN.Alternativa.Add(alternativa);
        }

        modelo.Pergunta[index] = perguntaN; //Adiciona o obj questão ao questionario
        Session["questionario"] = modelo; //Passa o obj questionario para a sessao
    }

    private void valorarCampos()
    {
        TextBox[] txb_alternativa = new TextBox[7];
        TextBox[] txb_ponto = new TextBox[7];

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



        txb_nomePergunta.Value = pergunta.PerguntaPergunta;

        for (int i = 0; i < pergunta.Alternativa.Count; i++)
        {
            alternativa = (Alt_alternativas)pergunta.Alternativa[i];
            txb_alternativa[i].Text = alternativa.AlternativaAlternativa;
            txb_ponto[i].Text = Convert.ToString(alternativa.PesoAlternativa);
        }

    }

    private void validarEmpresarial()
    {
        if (txb_pontos1.Text == "0")
        {
            lbl_pontos1.Visible = false;
            txb_pontos1.Visible = false;

            lbl_pontos2.Visible = false;
            txb_pontos2.Visible = false;

            lbl_pontos3.Visible = false;
            txb_pontos3.Visible = false;

            lbl_pontos4.Visible = false;
            txb_pontos4.Visible = false;

            lbl_pontos5.Visible = false;
            txb_pontos5.Visible = false;

            lbl_pontos6.Visible = false;
            txb_pontos6.Visible = false;

            lbl_pontos7.Visible = false;
            txb_pontos7.Visible = false;

        }

    }

}