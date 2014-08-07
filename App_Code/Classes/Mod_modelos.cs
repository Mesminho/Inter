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
    string _eventoNome;
    int _codigoModelo;
    string _nomeModelo;
    string _tipoModelo;
    Boolean _ativoModelo;
    Boolean _editarModelo;
    int _eventoCodigo;
    string _descricaoModelo;

    public string DescricaoModelo
    {
        get { return _descricaoModelo; }
        set { _descricaoModelo = value; }
    }

    public string EventoNome
    {
        get { return _eventoNome; }
        set { _eventoNome = value; }
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
    

    public string TipoModelo
    {
        get { return _tipoModelo; }
        set { _tipoModelo = value; }
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