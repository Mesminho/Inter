using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

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
            String sql = "CALL mod_update(?mod_codigo INTEGER, ?mod_nome, ?mod_descricao, ?mod_tipo)";

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

    public Mod_modelos Select(int codigo)
    {
        try
        {
            Mod_modelos objModelos = null;
            IDbConnection objConexao;
            IDbCommand objcommand;
            IDataReader objDatareader;
            objConexao = Mapped.Connection();
            objcommand = Mapped.Command("CALL mod_select(?mod_codigo)", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?codigoModelo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {
                objModelos = new Mod_modelos();
                //variavel questão (array)????
                objModelos.CodigoModelo = Convert.ToInt32(objDatareader["mod_codigo"]);
                objModelos.EventoCodigo = Convert.ToInt32(objDatareader["eve_codigo"]);
                objModelos.EventoNome = objDatareader["eve_nome"].ToString();
                objModelos.NomeModelo= objDatareader["mod_nome"].ToString();
                objModelos.TipoModelo = objDatareader["mod_tipo"].ToString();
                objModelos.AtivoModelo = Convert.ToBoolean(objDatareader["mod_ativo"]);
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

}