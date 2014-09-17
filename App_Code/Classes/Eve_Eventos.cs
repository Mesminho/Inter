using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Eve_Eventos
/// </summary>
public class Eve_Eventos
{
    int _codigo;
    string _nome;
    string _tema;
    string _dataInicio;
    string _dataFim;
    bool _isAtivo;

    public int Codigo
    {
        get { return _codigo; }
        set { _codigo = value; }
    }


    public string Nome
    {
        get { return _nome; }
        set { _nome = value; }
    }

    public string Tema
    {
        get { return _tema; }
        set { _tema = value; }
    }


    public string DataInicio
    {
        get { return _dataInicio; }
        set { _dataInicio = value; }
    }


    public string DataFim
    {
        get { return _dataFim; }
        set { _dataFim = value; }
    }


    public bool IsAtivo
    {
        get { return _isAtivo; }
        set { _isAtivo = value; }
    }

}