using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Res_respostasDB
/// </summary>
public class Res_respostasDB
{
    public int Update(Res_respostas respostas)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "update res_respostas set";
            sql += "que_codigo= ?que_codigo";
            sql += "alt_codigo= ?alt_codigo";


            sql += "where res_codigo = ?res_codigo";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?resp_codigo", respostas.CodigoResposta));
            objcommand.Parameters.Add(Mapped.Parameter("?que_codigo", respostas.Questionario));
            objcommand.Parameters.Add(Mapped.Parameter("?alt_codigo", respostas.Alternativa));
            


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

    public static int Insert(Res_respostas respostas)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "insert into res_respostas ";
            sql += "res_codigo, que_codigo,alt_codigo";
            sql += "values (?res_codigo, ?que_codigo, ?alt_codigo)";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?res_codigo", respostas.CodigoResposta));
            objcommand.Parameters.Add(Mapped.Parameter("?que_codigo", respostas.Questionario));
            objcommand.Parameters.Add(Mapped.Parameter("?alt_codigo", respostas.Alternativa));
           

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

            String sql = "delete from res_respostas where res_codigo = ?res_codigo";
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("res_codigo", codigo));
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
        objcommand = Mapped.Command("select * from res_respostas order by res_codigo", objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public Res_respostas Select(int codigo)
    {
        try
        {
            Res_respostas objRespostas = null;
            IDbConnection objConexao;
            IDbCommand objcommand;
            IDataReader objDatareader;
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command("select * from res_respostas where res_codigo = ?res_codigo", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?res_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {
                objRespostas = new Res_respostas();

                objRespostas.CodigoResposta = Convert.ToInt32(objDatareader["res_codigo"]);
                //objRespostas.Questionario = (objDatareader[""]);   que_codigo?
                //objRespostas.Alternativa = objDatareader[""];  alt_codigo?
                

            }
            objDatareader.Close();
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();
            objDatareader.Dispose();
            return objRespostas;
        }
        catch (Exception e)
        {
            return null;
        }

    }
}