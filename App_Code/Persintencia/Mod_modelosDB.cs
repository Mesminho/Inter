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

    public int Update(Mod_modelos modelos)
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

    public static DataSet SelectNaoEditado()
    {
        DataSet ds = new DataSet();
        IDbConnection objConexao;
        IDbCommand objcommand;
        IDataAdapter objDataAdapter;
        objConexao = Mapped.Connection();
        objcommand = Mapped.Command("SELECT * FROM mod_modelos where mod_editar=true", objConexao);
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
            objcommand = Mapped.Command("SELECT *, if(mod_habilitado = 0, 'Desabilitado', 'Habilitado') as habilitado FROM mod_modelos WHERE mod_codigo = ?mod_codigo;", objConexao);
            objcommand.Parameters.Add(Mapped.Parameter("?mod_codigo", codigo));
            objDatareader = objcommand.ExecuteReader();

            while (objDatareader.Read())
            {
                objModelos = new Mod_modelos();
                //variavel questão (array)????
                objModelos.CodigoModelo = Convert.ToInt32(objDatareader["mod_codigo"]);
                objModelos.NomeModelo= objDatareader["mod_nome"].ToString();
                objModelos.DescricaoModelo = objDatareader["mod_descricao"].ToString();
                //objModelos.TipoModelo = Convert.ToInt32(objDatareader["mod_tipo"]); NAO ESTA NA PROCEDURE
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





    public int Desabilitar(Mod_modelos modelo)
    {
        int errNumber = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE mod_modelos SET ";
            sql += "mod_habilitado = ?mod_habilitado ";
            sql += "WHERE mod_codigo = ?mod_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?mod_habilitado", 0));
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

    public int Habilitar(Mod_modelos modelo)
    {
        int errNumber = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            string sql = "UPDATE mod_modelos SET ";
            sql += "mod_habilitado = ?mod_habilitado ";
            sql += "WHERE mod_codigo = ?mod_codigo";
            objConexao = Mapped.Connection();
            objCommand = Mapped.Command(sql, objConexao);

            objCommand.Parameters.Add(Mapped.Parameter("?mod_habilitado", 1));
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