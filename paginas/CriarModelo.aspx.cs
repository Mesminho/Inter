using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_CriarQuestionario : System.Web.UI.Page
{
    Mod_modelos modelo = new Mod_modelos(); //Instancia o Objeto Questionario
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btn_continuar_Click(object sender, EventArgs e)
    {
        modelo.NomeModelo = txb_nomeModelo.Text; //Passa o texto do textBox Para o obj Questionario
        Session["modelo"] = modelo; //Passa o obj Questionario para sessao
        Response.Redirect("CriarPerguntas.aspx"); //Redireciona para pagina de criar alternativas
    }
    protected void btn_cancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}