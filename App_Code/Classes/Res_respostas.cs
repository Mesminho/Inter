using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Res_respostas
/// </summary>
public class Res_respostas
{
    int _codigoResposta;
    Que_questionarios questionario;
    Alt_alternativas alternativa;

    public Alt_alternativas Alternativa
    {
        get { return alternativa; }
        set { alternativa = value; }
    }

    public Que_questionarios Questionario
    {
        get { return questionario; }
        set { questionario = value; }
    }

    public int CodigoResposta
    {
        get { return _codigoResposta; }
        set { _codigoResposta = value; }
    }
}