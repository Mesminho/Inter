using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for Alt_alternativasDB
/// </summary>
public class Alt_alternativasDB
{
    public int Update(Alt_alternativas alternativas)
    {
        int retorno = 0; 
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "update alt_alternativas set";
            sql += "alt_alternativa= ?alt_alternativa";
            sql += "alt_peso= ?alt_peso";
            sql += "per_codigo= ?per_codigo";

            sql += "where alt_codigo = ?alt_codigo";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?alt_codigo", alternativas.CodigoAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?alt_alternativa", alternativas.AlternativaAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?alt_peso", alternativas.PesoAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?per_codigo", alternativas.CodigoPergunta));
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

    public static int Insert(Alt_alternativas alternativas)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objcommand;
            String sql = "insert into alt_alternativas ";
            sql += "alt_codigo, alt_alternativa, alt_peso, per_codigo";
            sql += "values (?alt_codigo, ?alt_alternativa,?alt_peso,?per_codigo)";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?alt_codigo", alternativas.CodigoAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?alt_alternativa", alternativas.AlternativaAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?alt_peso", alternativas.PesoAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?per_codigo", alternativas.CodigoPergunta));
            
            
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

            String sql = "delete from alt_alternativas where alt_codigo = ?alt_codigo";
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?alt_codigo", codigo));
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
        objcommand = Mapped.Command("select * from alt_alternativas order by alt_codigo", objConexao);
        objDataAdapter = Mapped.Adapter(objcommand);
        objDataAdapter.Fill(ds);
        objConexao.Close();
        objcommand.Dispose();
        objConexao.Dispose();
        return ds;
    }

    public Alt_alternativas Select(int codigo)
    {
        try
        {
            Alt_alternativas objAlternativas = null;
            IDbConnection objConexao;
            IDbCommand objcommand;
            IDataReader objDatareader;
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command("select * from alt_alternativas where alt_codigo = ?alt_codigo", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?alt_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {

                objAlternativas.CodigoAlternativa = Convert.ToInt32(objDatareader["alt_codigo"]);
                string alt = objDatareader["alt_alternativa"].ToString();
                double pes = Convert.ToDouble(objDatareader["alt_peso"]);
                objAlternativas.CodigoPergunta = Convert.ToInt32(objDatareader["per_codigo"]);

                objAlternativas = new Alt_alternativas(alt, pes);//por causa do construtor do Alt_alternativas
               
            }
            objDatareader.Close();
            objConexao.Close();
            objcommand.Dispose();
            objConexao.Dispose();
            objDatareader.Dispose();
            return objAlternativas;
        }
        catch (Exception e)
        {
            return null;
        }

    }



}