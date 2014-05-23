using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class PessoaDB
{
    public int Insert(Pessoa Pessoa)
    {
        int retorno = 0;
        try
        {
            IDbConnection objConexao;
            IDbCommand objCommand;
            //Cria o query que sera executado
            string sql = "Insert into pes_pessoas (pes_nome, pes_dataNasc, pes_email) value (?pes_nome, ?pes_dataNasc, ?pes_email)";
            //Preenche o objeto Conexão com as funções de Conexão
            objConexao = Mapped.Connection();
            //Preenche o objeto Conexão com as funções de Comando
            objCommand = Mapped.Command(sql, objConexao);
            //Add os paramentos para a query
            objCommand.Parameters.Add(Mapped.Parameter("?pes_nome", Pessoa.Nome));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_dataNasc", Pessoa.DataNascimento));
            objCommand.Parameters.Add(Mapped.Parameter("?pes_email", Pessoa.Email));
            //Execura a query criada
            objCommand.ExecuteNonQuery();
            //Fechando a conexão com banco de dados após ter executado a query criada
            objConexao.Close();
            //Removendo comando da memoria
            objCommand.Dispose(); objConexao.Dispose();

        }
        catch (Exception e)
        {
            retorno = -2;
        }
        return 0;
    }
}