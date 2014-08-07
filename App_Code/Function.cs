using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for Function
/// </summary>
/// 

namespace FuncoesBasicas
{

    public class Function
    {
        public static int QuantidadeRegistrosDataset(DataSet ds)
        {
            int qtde = ds.Tables[0].Rows.Count;
            return qtde;
        }

        public static void CarregaGrid(DataSet ds, GridView grv, Label lbl)
        {
            int qtde = ds.Tables[0].Rows.Count;
            if (qtde > 0)
            {
                grv.DataSource = ds.Tables[0].DefaultView;
                grv.DataBind();
                lbl.Text = "Foram encontrados " + qtde.ToString() + " registros";
                grv.Visible = true;
            }
            else
            {
                lbl.Text = "Não foram encontrados registros";
                grv.Visible = false;
            }
        }

        public static void CarregarDDL(DataSet ds, DropDownList ddl, string valor, string texto)
        {
            int qtde = ds.Tables[0].Rows.Count;
            if (qtde > 0)
            {
                ddl.DataSource = ds.Tables[0].DefaultView;
                ddl.DataTextField = texto;
                ddl.DataValueField = valor;
                ddl.DataBind();
                ddl.Items.Insert(0, new ListItem("Selecione", "0"));
            }
        }
    }
}