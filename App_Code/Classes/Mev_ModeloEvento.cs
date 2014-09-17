using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Mev_ModeloEvento
/// </summary>
public class Mev_ModeloEvento
{

    Mod_modelos _modelo;
    Eve_Eventos _evento;

    public Eve_Eventos Evento
    {
        get { return _evento; }
        set { _evento = value; }
    }

    public Mod_modelos Modelo
    {
        get { return _modelo; }
        set { _modelo = value; }
    }
  
   
}