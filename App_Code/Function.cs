using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI.WebControls;
using System.Text;

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
                if (qtde > 1)
                    lbl.Text = "Foram encontrados " + qtde.ToString() + " registros";
                else
                    lbl.Text = "Foi encontrado um registro";

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

        public static String TextoComQuebraDeLinha(string texto)
        {
            var text = string.Join("<br/>", texto.Split(new[] { Environment.NewLine }, StringSplitOptions.None).Select(x => HttpUtility.HtmlEncode(x)));
            return text;
        }

        public static string DiminuirTexto(string texto, int max)
        {
            if (texto.Length <= max)
            {
                return texto;
            }
            else
            {
                return texto.Substring(0, max) + "...";
            }
        }

        public static string QuebrarLinha(string texto, int max)
        {
            StringBuilder sbTexto = new StringBuilder(texto);
            int espaco;

            if (texto.Length <= max)
            {

                return texto;
            }
            else
            {

                for (int i = 1; i <= texto.Length / max; i++)
                {
                    espaco = texto.LastIndexOf(" ", max * i);
                    if (espaco > 0)
                    {
                        sbTexto.Insert(espaco, "<br/>");
                    }

                }

                texto = sbTexto.ToString();
                return texto;
            }
        }

    }
}