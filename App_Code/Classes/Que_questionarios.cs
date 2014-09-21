using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Que_questionarios
/// </summary>
public class Que_questionarios
{
    int _codigoQuestionario;
    double _pontoQuestionario;
    Moc_modeloClassificacao _modCla;
    string _inicioQuestionario;
    string _fimQuestionario;
   

    public string FimQuestionario
    {
        get { return _fimQuestionario; }
        set { _fimQuestionario = value; }
    }

    public string InicioQuestionario
    {
        get { return _inicioQuestionario; }
        set { _inicioQuestionario = value; }
    }

    public Moc_modeloClassificacao ModCla
    {
        get { return _modCla; }
        set { _modCla = value; }
    }

    public double PontoQuestionario
    {
        get { return _pontoQuestionario; }
        set { _pontoQuestionario = value; }
    }

    public int CodigoQuestionario
    {
        get { return _codigoQuestionario; }
        set { _codigoQuestionario = value; }
    }
}