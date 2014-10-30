using System;
using System.Collections.Generic;
using System.Web;
using System.Data;
using System.Collections;

/// <summary>
/// Summary description for Mod_modelosDB
/// </summary>
public class Mod_modelosDB
{

    public static int Update(Mod_modelos modelos)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "CALL mod_update(?mod_codigo, ?mod_nome, ?mod_descricao, ?mod_tipo)";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?mod_codigo", modelos.CodigoModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_descricao", modelos.DescricaoModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_nome", modelos.NomeModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_tipo", modelos.TipoModelo));



            objcommand.ExecuteNonQuery();
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();


        }
        catch (Exception e)
        {
            retorno = -2;
        }

        return retorno;
    }

    public static int Insert(Mod_modelos modelos)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "CALL mod_insert(?mod_nome, ?mod_descricao, ?mod_tipo)";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?mod_descricao", modelos.DescricaoModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_nome", modelos.NomeModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_tipo", modelos.TipoModelo));

            retorno = Convert.ToInt32(objcommand.ExecuteScalar());
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();


        }
        catch (Exception e)
        {
            retorno = -2;
        }

        return retorno;
    }

    public int Delete(int codigo)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;

            String sql = "CALL mod_delete(?mod_codigo)";
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?mod_codigo", codigo));
            objcommand.ExecuteNonQuery();
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();

        }
        catch (Exception e)
        {
            retorno = -2;
        }
        return retorno;
    }

    public static DataSet SelectAll()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objcommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objcommand = Mapped.Command("SELECT * FROM mod_view", objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectAll(int tipo)
    {
        string sql = "";
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objcommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        switch (tipo)
        {
            case 1:
                sql = "SELECT * FROM mod_investidor_view";
                break;
            case 2:
                sql = "SELECT * FROM mod_financeira_view";
                break;
            case 3:
                sql = "SELECT * FROM mod_empresarial_view";
                break;
            default:
                break;
        }
        objcommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectEditar(int tipo)
    {
        string sql = "";
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objcommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        switch (tipo)
        {
            case 1:
                sql = "SELECT * FROM mod_investidor_editar_view";
                break;
            case 2:
                sql = "SELECT * FROM mod_financeira_editar_view";
                break;
            case 3:
                sql = "SELECT * FROM mod_empresarial_editar_view";
                break;
            default:
                break;
        }
        objcommand = Mapped.Command(sql, objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static DataSet SelectEditar()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objcommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objcommand = Mapped.Command("SELECT * FROM mod_editar_view", objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }


    public static DataSet SelectAll_Evento()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objcommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objcommand = Mapped.Command("select * from eve_eventos order by eve_inicio", objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public static Mod_modelos Select(int codigo)
    {
        try
        {
            Mod_modelos objModelos = null;
            IDbConnection objConexao;
            IDbCommand objcommand;
            IDataReader objDatareader;
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command("call mod_select(?mod_codigo);", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?mod_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {
                objModelos = new Mod_modelos();
                objModelos.CodigoModelo = Convert.ToInt32(objDatareader["mod_codigo"]);
                objModelos.NomeModelo = objDatareader["mod_nome"].ToString();
                objModelos.DescricaoModelo = objDatareader["mod_descricao"].ToString();
                objModelos.TipoModelo = Convert.ToInt32(objDatareader["tim_codigo"]);
                objModelos.Habilitado = Convert.ToString(objDatareader["habilitado"]);
                objModelos.AtivoModelo = Convert.ToBoolean(objDatareader["mod_habilitado"]);
                objModelos.EditarModelo = Convert.ToBoolean(objDatareader["mod_editar"]);

            }
            objDatareader.Close();
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();
            objDatareader.Dispose();
            return objModelos;
        }
        catch (Exception e)
        {
            return null;
        }

    }

    public static Mod_modelos Aplicar(int codigo)
    {
        try
        {
            Mod_modelos objModelos = null;
            Per_perguntas objPerguntas = null;
            Alt_alternativas objAlternativas = null;
            Clas_classificacoes objClassificacoes = null;
            ArrayList alternativa = new ArrayList();
            ArrayList pergunta = new ArrayList();

            string[] classificacao = null;
            string[] classificacaoN = null;

            IDbConnection objConexao;
            IDbCommand objcommand;
            IDataReader objDatareader;
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command("call mod_aplicar(?mod_codigo);", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?mod_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            objModelos = new Mod_modelos();
            while (objDatareader.Read())
            {
                objModelos.CodigoModelo = Convert.ToInt32(objDatareader["mod_codigo"]);
                objModelos.NomeModelo = objDatareader["mod_nome"].ToString();
                objModelos.DescricaoModelo = objDatareader["mod_descricao"].ToString();
                objModelos.TipoModelo = Convert.ToInt32(objDatareader["tim_codigo"]);
                objModelos.AtivoModelo = Convert.ToBoolean(objDatareader["mod_habilitado"]);
                objModelos.EditarModelo = Convert.ToBoolean(objDatareader["mod_editar"]);


                classificacao = objDatareader["classificacao"].ToString().Split(',');


                objPerguntas = new Per_perguntas();
                objPerguntas.PerguntaPergunta = objDatareader["per_pergunta"].ToString();
                objPerguntas.CodigoPergunta = Convert.ToInt32(objDatareader["per_codigo"]);
                objPerguntas.CodigoModelo = Convert.ToInt32(objDatareader["mod_codigo"]);

                objAlternativas = new Alt_alternativas();
                objAlternativas.CodigoAlternativa = Convert.ToInt32(objDatareader["alt_codigo"]);
                objAlternativas.AlternativaAlternativa = objDatareader["alt_alternativa"].ToString();
                objAlternativas.PesoAlternativa = Convert.ToDouble(objDatareader["alt_peso"]);
                objAlternativas.PerguntaCodigo = Convert.ToInt32(objDatareader["alt_per_codigo"]);

                alternativa.Add(objAlternativas);
                pergunta.Add(objPerguntas);
            }

            int perant = 0;
            int altant = 0;
            for (int i = 0; i < pergunta.Count; i++)
            {
                Per_perguntas perguntaN = (Per_perguntas)pergunta[i];
                if (perguntaN.CodigoPergunta != perant)
                {
                    for (int n = 0; n < alternativa.Count; n++)
                    {
                        Alt_alternativas alternativaN = (Alt_alternativas)alternativa[n];
                        if (alternativaN.PerguntaCodigo == perguntaN.CodigoPergunta && alternativaN.CodigoAlternativa != altant)
                        {
                            perguntaN.Alternativa.Add(alternativaN);
                            altant = alternativaN.CodigoAlternativa;
                        }
                    }
                    objModelos.Pergunta.Add(perguntaN);
                    perant = perguntaN.CodigoPergunta;
                }
            }

            for (int n = 0; n < classificacao.Length; n++)
            {
                classificacaoN = classificacao[n].Split('-');
                objClassificacoes = new Clas_classificacoes();
                objClassificacoes.CodigoClassificacao = Convert.ToInt32(classificacaoN[0]);
                objClassificacoes.NomeClassificacao = classificacaoN[1];
                objClassificacoes.DescricaoClassificacao = classificacaoN[2];
                objClassificacoes.PontoClassificacao = Convert.ToDouble(classificacaoN[3]);
                objModelos.Classificacoes.Add(objClassificacoes);
            }


            objDatareader.Close();
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();
            objDatareader.Dispose();
            return objModelos;
        }
        catch (Exception e)
        {
            return null;
        }

    }


    public int Habilitar(Mod_modelos modelo, int habilitado)
    {
        int errNumber = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "CALL mod_habilitar(?mod_codigo,?mod_habilitado)";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?mod_habilitado", habilitado));
            objCommand.Parameters.Add(Mapped.Parameter("?mod_codigo", modelo.CodigoModelo));
            objCommand.ExecuteNonQuery();
            objConexao.Close();
            objCommand.Dispose();
            objConexao.Dispose();
        }
        catch (Exception ex)
        {
            errNumber = -2;
        }
        return errNumber;
    }


}