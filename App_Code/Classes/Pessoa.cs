using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class Pessoa
{
    private int _id;
    private String _nome;
    private DateTime _dataNascimento;
    private String _email;

    public int Id
    {
        get { return _id; }
        set { _id = value; }
    }

    public String Nome
    {
        get { return _nome; }
        set { _nome = value; }
    }

    public DateTime DataNascimento
    {
        get { return _dataNascimento; }
        set { _dataNascimento = value; }
    }

    public String Email
    {
        get { return _email; }
        set { _email = value; }
    }

    public Pessoa()
    {

    }


}