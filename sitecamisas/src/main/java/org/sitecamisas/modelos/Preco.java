package org.sitecamisas.modelos;

import java.io.Serializable;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Locale;

import javax.persistence.Embeddable;

@Embeddable
public class Preco implements Serializable{

	private static final long serialVersionUID = -2058192870777069227L;
	
	private BigDecimal valor;
    private TipoPreco tipo;

    public BigDecimal getValor() {
        return valor;
    }

    /*public void setValor(BigDecimal valor) {
        this.valor = valor;
    }*/
    
    public void setValor(String valor) {
    	try {
			this.valor = new BigDecimal(converte(valor));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    public TipoPreco getTipo() {
        return tipo;
    }

    public void setTipo(TipoPreco tipo) {
        this.tipo = tipo;
    }
    
    public static double converte(String arg) throws ParseException{
		
		if(arg.startsWith("R$")) {
			arg = arg.substring(3);
		}
	    //obtem um NumberFormat para o Locale default (BR)
	    NumberFormat nf = NumberFormat.getNumberInstance(new Locale("pt", "BR"));	    
	    String n = arg.replace(".", ",");
	    //converte um número com vírgulas ex: 2,56 para double
	    double number = nf.parse(n).doubleValue();
	    return number;
	}

}
