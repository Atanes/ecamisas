package org.sitecamisas.daos;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.sitecamisas.modelos.Produto;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ProdutoDAO implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@PersistenceContext
    private EntityManager manager;
	
	public void inserir(Produto produto) {
		
		
		if(produto.getId() == 0) {
			manager.persist(produto);
		}else {
			manager.merge(produto);
		}
		
	}
	
	public List<Produto> listar(){
	    return manager.createQuery("select distinct(p) from Produto p join fetch p.precos precos", Produto.class).getResultList();
	}
	
	public List<Produto> promocao(){
	    return manager.createQuery("select distinct(p) from Produto p join fetch p.precos precos where p.promocao = 1", Produto.class).getResultList();
	}
	
	public List<Produto> genero(String genero){
	    return manager.createQuery("select distinct(p) from Produto p join fetch p.precos precos where p.genero = '" + genero + "' or p.genero = 'unissex'", Produto.class).getResultList();
	}
	
	public Produto find(int id){
		return manager.createQuery("select distinct(p) from Produto p join fetch p.precos precos where p.id = :id", Produto.class).setParameter("id", id).getSingleResult();
	}
	
	public void remove(int id) {
		manager.remove(find(id));		
	}
	
}