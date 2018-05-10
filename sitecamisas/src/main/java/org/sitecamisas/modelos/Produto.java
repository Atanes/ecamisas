package org.sitecamisas.modelos;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Locale;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Produto implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String descricao;
	private String genero;
	private BigDecimal preco_atual;
	private BigDecimal preco_antigo;
	private String url_imagem;
	private boolean promocao;
	private int estoque;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public BigDecimal getPreco_atual() {
		return preco_atual;
	}
	public void setPreco_atual(String preco_atual) throws ParseException {
		this.preco_atual = new BigDecimal(converte(preco_atual));
	}
	public BigDecimal getPreco_antigo() {
		return preco_antigo;
	}
	/*public void setPreco_antigo(BigDecimal preco_antigo) {
		this.preco_antigo = preco_antigo;
	}*/
	public void setPreco_antigo(String preco_antigo) throws ParseException {
		if(!preco_antigo.equals("")) {
			this.preco_antigo = new BigDecimal(converte(preco_antigo));
		}else {
			this.preco_antigo = null;
		}
		
	}
	public String getUrl_imagem() {
		return url_imagem;
	}
	public void setUrl_imagem(String url_imagem) {
		this.url_imagem = url_imagem;
	}
	public boolean isPromocao() {
		return promocao;
	}
	public void setPromocao(boolean promocao) {
		this.promocao = promocao;
	}
	public int getEstoque() {
		return estoque;
	}
	public void setEstoque(int estoque) {
		this.estoque = estoque;
	}
	
	public String valorMoeda(BigDecimal valor){
		NumberFormat nf = NumberFormat.getCurrencyInstance();
		if(valor != null){
			return nf.format(valor);
		}
		return "";
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
