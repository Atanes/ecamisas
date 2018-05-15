package org.sitecamisas.modelos;

public enum TipoPreco {
	ATUAL("Preço atual"),
	
	ANTIGO("Preço antigo"),
	
	PROMOCAO("Preço promoção");
	
	private String descricao;
	
	TipoPreco(String descricao){
            this.descricao = descricao;
        }
        
	public String getDescricao() {
		return descricao;
	}
  
	
	public static String[] descricaoPrecos(){
		String[] lista = {"Preço atual","Preço antigo","Preço promoção"};
		return lista;
	}

	
}
