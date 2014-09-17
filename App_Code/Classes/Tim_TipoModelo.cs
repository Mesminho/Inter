using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Tim_TipoModelo
/// </summary>
public class Tim_TipoModelo
{

    int _timCodigo;
    string _timDescricao;

    public string TimDescricao
    {
        get { return _timDescricao; }
        set { _timDescricao = value; }
    }

    public int TimCodigo
    {
        get { return _timCodigo; }
        set { _timCodigo = value; }
    }




}