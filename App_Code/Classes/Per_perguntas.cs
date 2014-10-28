using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Questao
/// </summary>
public class Per_perguntas
{
    ArrayList alternativa = new ArrayList();
    int _codigoPergunta;
    string _perguntaPergunta;
    int _codigoModelo;
    bool _discertativa;

    public bool Discertativa
    {
        get { return _discertativa; }
        set { _discertativa = value; }
    }


    public int CodigoModelo
    {
        get { return _codigoModelo; }
        set { _codigoModelo = value; }
    }

    public string PerguntaPergunta
    {
        get { return _perguntaPergunta; }
        set { _perguntaPergunta = value; }
    }

    public int CodigoPergunta
    {
        get { return _codigoPergunta; }
        set { _codigoPergunta = value; }
    }

    public ArrayList Alternativa
    {
        get { return alternativa; }
        set { alternativa = value; }
    }
}