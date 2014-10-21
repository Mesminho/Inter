using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Questionario
/// </summary>
public class Mod_modelos
{
    ArrayList pergunta = new ArrayList();
    ArrayList classificacoes = new ArrayList();
    int _codigoModelo;
    string _nomeModelo;
    int _tipoModelo;
    Boolean _ativoModelo;
    Boolean _editarModelo;
    string _habilitado;
    int _eventoCodigo;
    string _descricaoModelo;

    public string Habilitado
    {
        get { return _habilitado; }
        set { _habilitado = value; }
    }

    public ArrayList Classificacoes
    {
        get { return classificacoes; }
        set { classificacoes = value; }
    }

    public int TipoModelo
    {
        get { return _tipoModelo; }
        set { _tipoModelo = value; }
    }

    public string DescricaoModelo
    {
        get { return _descricaoModelo; }
        set { _descricaoModelo = value; }
    }

    public int CodigoModelo
    {
        get { return _codigoModelo; }
        set { _codigoModelo = value; }
    }

    public string NomeModelo1
    {
        get { return _nomeModelo; }
        set { _nomeModelo = value; }
    }

    public Boolean AtivoModelo
    {
        get { return _ativoModelo; }
        set { _ativoModelo = value; }
    }

    public Boolean EditarModelo
    {
        get { return _editarModelo; }
        set { _editarModelo = value; }
    }

    public int EventoCodigo
    {
        get { return _eventoCodigo; }
        set { _eventoCodigo = value; }
    }

    public ArrayList Pergunta
    {
        get { return pergunta; }
        set { pergunta = value; }
    }

    public string NomeModelo
    {
        get { return _nomeModelo; }
        set { _nomeModelo = value; }
    }

}