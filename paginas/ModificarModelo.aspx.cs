using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_ModificarModeloEd : System.Web.UI.Page
{
    Mod_modelos modelo; // Cria variavel do tipo Questionario

    protected void Page_Load(object sender, EventArgs e)
    {
        modelo = (Mod_modelos)Session["modelo"]; //Instancia o obj Questionario, com os valores vindos da pg anterior
        if (!IsPostBack)
        {
            valorarCampos();
        }
    }

    private void salvarModelo()
    {
        modelo.NomeModelo = txb_nomeModelo.Value.ToString();
        modelo.DescricaoModelo = txt_descricao.Value.ToString();
        Session["modelo"] = modelo;
    }

    private void valorarCampos()
    {
        txb_nomeModelo.Value = modelo.NomeModelo.ToString();
        txt_descricao.Value = modelo.DescricaoModelo.ToString();
    }
    protected void btn_continuar_Click(object sender, EventArgs e)
    {
        salvarModelo();
        Response.Redirect("ConfirmarModelo.aspx");
    }
    protected void btn_cancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("ConfirmarModelo.aspx");
    }
}