using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_ConfigurarQuestionario : System.Web.UI.Page
{
    protected string hab;
    protected string des;
    protected void Page_Load(object sender, EventArgs e)
    {
        btn_habilitar.Attributes.Add("onclick", "msg();");
    }
    protected void ltb_questionarioDesab_SelectedIndexChanged(object sender, EventArgs e)
    {
        btn_habilitar.Text = "Habilitar";
    }
    protected void ltb_questionarioHab_SelectedIndexChanged(object sender, EventArgs e)
    {
        btn_habilitar.Text = "Desabilitar";
    }
    protected void btn_habilitar_Click(object sender, EventArgs e)
    {
        hab = ltb_questionarioHab.SelectedValue;
        des = ltb_questionarioDesab.SelectedValue;
        if (btn_habilitar.Text.Equals("Desabilitar"))
        {
            ltb_questionarioDesab.Items.Add(hab);
            ltb_questionarioHab.Items.Remove(hab);
        }
        else
        {
            ltb_questionarioHab.Items.Add(des);
            ltb_questionarioDesab.Items.Remove(des);
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        lbl_principal.Text = ltb_questionarioPrincipal.SelectedValue;
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}