using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Clas_classificacoesDB
/// </summary>
public class Clas_classificacoesDB
{
    public static int Update(Clas_classificacoes classificacoes)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "call cla_update(?cla_codigo, ?cla_pontosMax, ?cla_descricao, ?cla_nome)";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?cla_codigo", classificacoes.CodigoClassificacao));
            objcommand.Parameters.Add(Mapped.Parameter("?cla_nome", classificacoes.NomeClassificacao));
            objcommand.Parameters.Add(Mapped.Parameter("?cla_descricao", classificacoes.DescricaoClassificacao));
            objcommand.Parameters.Add(Mapped.Parameter("?cla_pontosMax", classificacoes.PontoClassificacao));
           

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

    public static int Insert(Clas_classificacoes classificacoes)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "CALL cla_insert(?cla_pontosMax, ?cla_descricao,?cla_nome) ";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?cla_codigo", classificacoes.CodigoClassificacao));
            objcommand.Parameters.Add(Mapped.Parameter("?cla_pontosMax", classificacoes.PontoClassificacao));
            objcommand.Parameters.Add(Mapped.Parameter("?cla_descricao", classificacoes.DescricaoClassificacao));
            objcommand.Parameters.Add(Mapped.Parameter("?cla_nome", classificacoes.NomeClassificacao));


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

    public static int Delete(int codigo)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;

            String sql = "CALL cla_delete(?cla_codigo)";
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?cla_codigo", codigo));
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

    public DataSet SelectAll()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objcommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objcommand = Mapped.Command("SELECT * FROM cla_view", objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public Clas_classificacoes Select(int codigo)
    {
        try
        {
            Clas_classificacoes objClassificacao = null;
            IDbConnection objConexao;
            IDbCommand objcommand;
            IDataReader objDatareader;
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command("CALL cla_select(?cla_codigo)", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?cla_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {
                objClassificacao = new Clas_classificacoes();

                objClassificacao.CodigoClassificacao = Convert.ToInt32(objDatareader["cla_codigo"]);
                objClassificacao.PontoClassificacao = Convert.ToDouble(objDatareader["cla_pontosMax"]);
                objClassificacao.DescricaoClassificacao = objDatareader["cla_descricao"].ToString();
                objClassificacao.NomeClassificacao = objDatareader["cla_nome"].ToString();
      

            }
            objDatareader.Close();
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();
            objDatareader.Dispose();
            return objClassificacao;
        }
        catch (Exception e)
        {
            return null;
        }

    }
}