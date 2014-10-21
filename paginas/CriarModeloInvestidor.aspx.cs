using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FuncoesBasicas;
using System.Collections;

public partial class paginas_CriarQuestionario : System.Web.UI.Page
{
    Mod_modelos modelo = new Mod_modelos(); //Instancia o Objeto Questionario
    Clas_classificacoes classificacao; //Instancia de Classificações
    

    protected void Page_Load(object sender, EventArgs e)
    {
        //DataSet ds = Mod_modelosDB.SelectAll_Evento();
        if (!IsPostBack)
        {
            if (Convert.ToString(Session["EditarModelo"]) != "")
            {

                btn_continuar.Visible = false;
                btn_atualizar.Visible = true;
                Mod_modelos mod = (Mod_modelos)Session["EditarModelo"];

                txb_nomeModelo.Value=mod.NomeModelo;
                txt_descricao.InnerText = mod.DescricaoModelo;
                
                

            }
        }

    }

    protected void btn_continuar_Click(object sender, EventArgs e)
    {
        if (validarCampos())
        {
            modelo.NomeModelo = txb_nomeModelo.Value; //Passa o texto do textBox Para o obj Questionario
            modelo.TipoModelo = 1;
            modelo.DescricaoModelo = txt_descricao.Value;


            //Perfil Conservador
            classificacao = new Clas_classificacoes();
            classificacao.NomeClassificacao = "Conservador";
            classificacao.PontoClassificacao = Convert.ToDouble(txtPontuacaoConservador.Value);
            classificacao.DescricaoClassificacao = "";
            modelo.Classificacoes.Add(classificacao);

            //Perfil Moderado
            classificacao = new Clas_classificacoes();
            classificacao.NomeClassificacao = "Moderado";
            classificacao.PontoClassificacao = Convert.ToDouble(txtPontuacaoModerado.Value);
            classificacao.DescricaoClassificacao = "";
            modelo.Classificacoes.Add(classificacao);

            //Perfil Agressivo
            classificacao = new Clas_classificacoes();
            classificacao.NomeClassificacao = "Agressivo";
            classificacao.PontoClassificacao = Convert.ToDouble(txtPontuacaoAgressivo.Value);
            classificacao.DescricaoClassificacao = "";
            modelo.Classificacoes.Add(classificacao);

            Session["modelo"] = modelo; //Passa o obj Questionario para sessao
            Response.Redirect("CriarPerguntas.aspx"); //Redireciona para pagina de criar perguntas
        }
        else
        {
            String script = "<script language='javascript'>alert('Pontuação máxima dos perfis não podem ser iguais');</script>";
            ClientScript.RegisterStartupScript(GetType(), "alerta1", script, false);
        }

    }
 


    private bool validarCampos()
    {
        return txtPontuacaoConservador.Value != txtPontuacaoModerado.Value && txtPontuacaoConservador.Value != txtPontuacaoAgressivo.Value && txtPontuacaoModerado.Value != txtPontuacaoAgressivo.Value;
    }

    protected void btn_atualizar_Click(object sender, EventArgs e)
    {


            Mod_modelos mod = (Mod_modelos)Session["EditarModelo"];
            mod.NomeModelo = txb_nomeModelo.Value;
            mod.DescricaoModelo = txt_descricao.InnerText;


            Mod_modelosDB modDB = new Mod_modelosDB();
            switch (modDB.Update(mod))
            {
                case -2:
                    Label1.Text = "Erro ao editar";
                    break;
                case 0:
                    ClientScript.RegisterStartupScript(GetType(), "alerta", "alert('Atualização realizada com sucesso!');", true);
                    Label1.Text = "Atualização realizada";
                    
                    txb_nomeModelo.Value = string.Empty;
                    txt_descricao.InnerText=string.Empty;
                    
                    btn_atualizar.Visible = false;
                    btn_continuar.Visible = true;
                    break;
            }
        }


    }
