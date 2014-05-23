using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Clas_classificacoes
/// </summary>
public class Clas_classificacoes
{
    int _codigoClassificacao;
    double _pontoClassificacao;
    string _descricaoClassificacao;
    string _nomeClassificacao;

    public double PontoClassificacao
    {
        get { return _pontoClassificacao; }
        set { _pontoClassificacao = value; }
    }


    public int CodigoClassificacao
    {
        get { return _codigoClassificacao; }
        set { _codigoClassificacao = value; }
    }

    public String DescricaoClassificacao
    {
        get { return _descricaoClassificacao; }
        set { _descricaoClassificacao = value; }
    }

    public String NomeClassificacao
    {
        get { return _nomeClassificacao; }
        set { _nomeClassificacao = value; }
    }
}