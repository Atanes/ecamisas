package org.sitecamisas.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.sitecamisas.modelos.Contato;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ContatoDAO {

	@PersistenceContext
    private EntityManager manager;


	public void inserir(Contato contato) {
		System.out.println(contato.getId());
		if(contato.getId() == 0) {
			manager.persist(contato);
		}else {
			manager.merge(contato);
		}
	}
	
	public List<Contato> listar(){
	    return manager.createQuery("select c from Contato c", Contato.class).getResultList();
	}
	
	public Contato find(int id){
		return manager.createQuery("select c from Contato c where c.id = :id", Contato.class).setParameter("id", id).getSingleResult();
	}
	
	public void remove(int id) {
		manager.remove(find(id));		
	}
	
}