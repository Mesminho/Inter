using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Que_questionariosDB
/// </summary>
public class Que_questionariosDB
{

    public int Update(Que_questionarios questionarios)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "update que_questionarios set";
            sql += "que_pontos= ?que_pontos";
            sql += "que_inicio= ?que_inicio";
            sql += "que_fim= ?que_fim";
            sql += "modCla= ?_modCla";//?
            sql += "where que_codigo = ?que_codigo";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?que_pontos", questionarios.PontoQuestionario));
            objcommand.Parameters.Add(Mapped.Parameter("?que_inicio", questionarios.InicioQuestionario));
            objcommand.Parameters.Add(Mapped.Parameter("?que_fim", questionarios.FimQuestionario));
            objcommand.Parameters.Add(Mapped.Parameter("?que_codigo", questionarios.CodigoQuestionario));
            objcommand.Parameters.Add(Mapped.Parameter("?_modCla", questionarios.ModCla));//?

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

    public static int Insert(Que_questionarios questionarios)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "insert into Que_questionarios ";
            sql += " _que_pontos, _que_inicio, _que_fim, _que_codigo, _modCla";
            sql += "values (?que_pontos, ?que_inicio, ?que_fim, ?que_codigo, ?modCla)";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);


            objcommand.Parameters.Add(Mapped.Parameter("?que_codigo", questionarios.CodigoQuestionario));
            objcommand.Parameters.Add(Mapped.Parameter("?que_pontos", questionarios.PontoQuestionario));
            objcommand.Parameters.Add(Mapped.Parameter("?modCla", questionarios.ModCla));
            objcommand.Parameters.Add(Mapped.Parameter("?que_inicio", questionarios.InicioQuestionario));
            objcommand.Parameters.Add(Mapped.Parameter("?que_fim", questionarios.FimQuestionario));


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

    public int Delete(int codigo)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;

            String sql = "delete from que_questionarios where que_codidgo = ?que_codigo";
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?que_codigo", codigo));
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
        objcommand = Mapped.Command("select * from que_questionarios order by que_codigo", objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public Que_questionarios Select(int codigo)
    {
        try
        {
            Que_questionarios objQuestinario = null;
            IDbConnection objConexao;
            IDbCommand objcommand;
            IDataReader objDatareader;
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command("select * from que_questionarios where que_codigo = ?que_codigo", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?que_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {
                objQuestinario = new Que_questionarios();
                objQuestinario.CodigoQuestionario= Convert.ToInt32(objDatareader["que_codigo"]);
                objQuestinario.PontoQuestionario = Convert.ToDouble(objDatareader["que_pontos"]);
                objQuestinario.InicioQuestionario = objDatareader["que_inicio"].ToString();
                objQuestinario.FimQuestionario = objDatareader["que_fim"].ToString();
             // objQuestinario.ModCla = objDatareader[""].ToString();  ??
                
               

            }
            objDatareader.Close();
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();
            objDatareader.Dispose();
            return objQuestinario;
        }
        catch (Exception e)
        {
            return null;
        }

    }


}