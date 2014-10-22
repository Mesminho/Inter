using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


/// <summary>
/// Summary description for Per_perguntasDB
/// </summary>
public class Per_perguntasDB
{

    public int Update(Per_perguntas perguntas)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "CALL per_update(?mod_codigo, ?per_pergunta)";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);
            // variavel alternativa tambem?
            objcommand.Parameters.Add(Mapped.Parameter("?per_pergunta", perguntas.PerguntaPergunta));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_codigo", perguntas.CodigoModelo));
            
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

    public static int Insert(Per_perguntas perguntas)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "CALL per_insert(?per_pergunta, ?mod_codigo)";
            
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?per_pergunta", perguntas.PerguntaPergunta));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_codigo", perguntas.CodigoModelo));
            
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

            String sql = "CALL per_delete(?per_codigo)";
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?per_codigo", codigo));
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
        objcommand = Mapped.Command("SELECT * FROM per_view", objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public Per_perguntas Select(int codigo)
    {
        try
        {
            Per_perguntas objPerguntas = null;
            IDbConnection objConexao;
            IDbCommand objcommand;
            IDataReader objDatareader;
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command("CALL per_select(?per_codigo)", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?per_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {
                objPerguntas = new Per_perguntas();
                objPerguntas.CodigoPergunta = Convert.ToInt32(objDatareader["per_codigo"]);
                objPerguntas.CodigoModelo = Convert.ToInt32(objDatareader["mod_ codigo"]);
                objPerguntas.PerguntaPergunta = objDatareader["per_pergunta"].ToString();
                
               

            }
            objDatareader.Close();
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();
            objDatareader.Dispose();
            return objPerguntas;
        }
        catch (Exception e)
        {
            return null;
        }

    }


}