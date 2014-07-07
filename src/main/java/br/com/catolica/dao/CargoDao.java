package br.com.catolica.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;

import br.com.catolica.impl.CrudImpl;
import br.com.catolica.model.Cargo;
import br.com.catolica.projetorestaurante.Conexao;

@Repository
public class CargoDao implements CrudImpl<Cargo>{
	
	public CargoDao() {}
	
	public Cargo searchById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Cargo cargo = (Cargo)manager.find(Cargo.class, id);
		manager.close();
		return cargo;
	}
	
	public void save(final Cargo obj) {
		EntityManager manager = Conexao.getEntityManager();
		manager.getTransaction().begin();
		manager.merge(obj);
		manager.getTransaction().commit();
		manager.close();
	}

	public void removeById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Cargo cargo = (Cargo)manager.find(Cargo.class, id);
		manager.getTransaction().begin();
		manager.remove(cargo);
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Cargo> searchAll() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT c FROM Cargo c");
		List<Cargo> cargos = query.getResultList();
		manager.close();
		return cargos;
	}
	
}
