using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paginas_Resultado : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string pontuacao = Session["pontos"].ToString();
        lbl_pontuacao.Text = "Sua pontuação é: " + pontuacao;
        calcularPerfil(pontuacao, lbl_resultado, lbl_descricao);
    }

    protected void calcularPerfil(string valor, Label resultado, Label descricao)
    {
        //Exibe o perfil de acordo com a pontuação
        string conservador = "Cliente que busca segurança acima de tudo em seus investimentos. Perfil voltado para aplicações em renda fixa.O cliente conservador tem a segurança como ponto decisivo para as suas aplicações. Embora você possa ser um investidor conservador, pode investir uma parte pequena dos seus recursos em Renda Variável. Mantendo um alto percentual em Renda Fixa, você não perde o foco da sua estratégia. Você também pode colocar 100% dos seus investimentos em Renda Fixa. Este tipo de estratégia também pode ser usada para investimentos de curto prazo, nos quais você não pode arriscar seu patrimônio.";
        string moderado = "Cliente disposto a correr um pouco de risco para obter ganhos maiores que a inflação. Este perfil sugere aplicações em fundos de renda fixa, multimercados, podendo aplicar uma pequena parte em fundos de ações.É o investidor que prefere a segurança da Renda Fixa, mas também quer participar da rentabilidade da Renda Variável. Para esse investidor a segurança é importante, mas também quer retornos acima da média. Um risco médio é aceitável. Nestas estratégias a maior parte dos recursos são aplicados em Fundos de Investimento com risco mínimo ou moderado, como Fundos de Renda Fixa e Fundos Balanceados. Você também pode diversificar seus investimentos aplicando uma parcela em Fundos de Renda Variável.";
        string agressivo = "Cliente disposto a correr risco para obter ganhos no médio e longo prazo. Este perfil sugere que o cliente pode disponibilizar a maior parte de seus recursos em fundos multimercados e fundos de ações. É aquele investidor que busca a boa rentabilidade que a Renda Variável pode oferecer no médio e longo prazo, e que tem disposição para suportar os riscos na busca de resultados melhores.Mesmo as estratégias mais agressivas apresentam uma boa fatia de investimento em Renda Fixa para proteção do patrimônio. Se você investe 100% dos seus recursos em Renda Variável, podem ocorrer grandes perdas em seus investimentos.";

        int pontos = int.Parse(valor);
        if (pontos <= 28)
        {
            resultado.Text = "Perfil Conservador:";
            descricao.Text = conservador;
        }
        else if (pontos <= 52)
        {
            resultado.Text = "Perfil Moderado:";
            descricao.Text = moderado;
        }
        else
        {
            resultado.Text = "Perfil Agressivo:";
            descricao.Text = agressivo;
        }

        
    }
}