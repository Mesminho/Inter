using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for Mapped
/// </summary>
public class Mapped
{
	/// <summary>
    /// Metodo responsavel pela conexao com o BD 
    /// </summary>
    /// <returns>Retorna a conexao</returns>
    public static IDbConnection Connection()
    {
        MySqlConnection objConexao = new MySqlConnection(ConfigurationManager.AppSettings["StrConexao"]);
        objConexao.Open();
        return objConexao;
    }

    /// <summary>
    /// Metodo de execução de comandos SQL
    /// </summary>
    /// <param name="query">texto com comando sql a ser executado</param>
    /// <param name="objConexao">Conexao com o sgbd definido</param>
    /// <returns>retorna o comando sql valido</returns>
    public static IDbCommand Command(string query, IDbConnection objConexao)
    {
        IDbCommand command = objConexao.CreateCommand();
        command.CommandText = query;
        return command;
    }

    public static IDataAdapter Adapter(IDbCommand command)
    {
        IDbDataAdapter adap = new MySqlDataAdapter();
        adap.SelectCommand = command;
        return adap;
    }

    public static IDbDataParameter Parameter(string nomeDoParametro, object valor)
    {
        return new MySqlParameter(nomeDoParametro, valor);
    }


	
}