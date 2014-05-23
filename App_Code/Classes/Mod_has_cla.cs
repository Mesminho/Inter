using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Mod_has_cla
/// </summary>
public class Mod_has_cla
{
    Clas_classificacoes _classificacao;
    Mod_modelos _modelo;

    public Clas_classificacoes Classificacao
    {
        get { return _classificacao; }
        set { _classificacao = value; }
    }

    public Mod_modelos Modelo
    {
        get { return _modelo; }
        set { _modelo = value; }
    }
}