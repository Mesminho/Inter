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
            String sql = "update per_perguntas set";
            sql += "per_pergunta= ?per_pergunta";
            sql += "mod_codigo= ?mod_codigo";

            sql += "where per_codigo = ?per_codigo";

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
            String sql = "insert into per_perguntas ";
            sql += "(per_pergunta, mod_codigo)";
            sql += "values (?per_pergunta, ?mod_codigo);";
            sql += "select last_insert_id()";
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

            String sql = "delete from per_perguntas where per_codigo = ?per_codigo";
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
        objcommand = Mapped.Command("select * from per_perguntas order by per_codigo", objConexao);
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
            objcommand = Mapped.Command("select * from per_perguntas where per_codigo = ?per_codigo", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?per_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {
                objPerguntas = new Per_perguntas();
                //variavel alternativa
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