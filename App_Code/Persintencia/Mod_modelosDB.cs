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
            String sql = "update mod_modelos set";
            sql += "eve_nome= ?eve_nome";
            sql += "eve_codigo= ?eve_codigo";
            sql += "mod_nome= ?mod_nome";
            sql += "mod_tipo= ?mod_tipo";
            sql += "mod_ativo= ?mod_ativo";
            sql += "mod_editar= ?mod_editar";
           
            //variável questão (array)????

            sql += "where mod_codigo = ?mod_codigo";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?mod_codigo", modelos.CodigoModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?eve_nome", modelos.EventoNome));
            objcommand.Parameters.Add(Mapped.Parameter("?eve_codigo", modelos.EventoCodigo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_nome", modelos.NomeModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_tipo", modelos.TipoModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_ativo", modelos.AtivoModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_editar", modelos.EditarModelo));
           


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
            String sql = "insert into mod_modelos ";
            sql += "(mod_descricao, mod_nome, mod_tipo, mod_ativo, mod_editar, eve_codigo)"; 
            // variável questão??
            sql += "values (?mod_descricao, ?mod_nome, ?mod_tipo, ?mod_ativo, ?mod_editar, ?eve_codigo );";
            sql += "select last_insert_id();";

            objConexao = Mapped.Connection();
            objcommand = Mapped.Command(sql, objConexao);

            objcommand.Parameters.Add(Mapped.Parameter("?mod_descricao", modelos.DescricaoModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_nome", modelos.NomeModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_tipo", modelos.TipoModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_ativo", modelos.AtivoModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?mod_editar", modelos.EditarModelo));
            objcommand.Parameters.Add(Mapped.Parameter("?eve_codigo", modelos.EventoCodigo));
            
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

            String sql = "delete from mod_modelos where mod_codigo = ?mod_codigo";
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
        objcommand = Mapped.Command("select * from mod_modelos order by mod_codigo", objConexao);
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
            objcommand = Mapped.Command("select * from mod_modelos where mod_codigo = ?mod_codigo", objConexao);
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