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
            String sql = "CALL alt_update(?alt_codigo, ?alt_alternativa, ?alt_peso)";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?alt_codigo", alternativas.CodigoAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?alt_alternativa", alternativas.AlternativaAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?alt_peso", alternativas.PesoAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?per_codigo", alternativas.PerguntaCodigo));
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
            String sql = "CALL alt_insert(?alt_alternativa, ?alt_peso, ?per_codigo) ";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?alt_alternativa", alternativas.AlternativaAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?alt_peso", alternativas.PesoAlternativa));
            objcommand.Parameters.Add(Mapped.Parameter("?per_codigo", alternativas.PerguntaCodigo));
            
            
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

            String sql = "CALL alt_delete (?alt_codigo)";
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
        objcommand = Mapped.Command("SELECT * FROM alt_view", objConexao);
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
            objcommand = Mapped.Command("CALL alt_select(?alt_codigo)", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?alt_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {

                objAlternativas.CodigoAlternativa = Convert.ToInt32(objDatareader["alt_codigo"]);
                string alt = objDatareader["alt_alternativa"].ToString();
                double pes = Convert.ToDouble(objDatareader["alt_peso"]);
                objAlternativas.PerguntaCodigo = Convert.ToInt32(objDatareader["per_codigo"]);

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