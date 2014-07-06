package br.com.catolica.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.catolica.impl.CrudImpl;
import br.com.catolica.model.Venda;
import br.com.catolica.projetorestaurante.Conexao;

public class VendaDao implements CrudImpl<Venda> {

	public Venda searchById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Venda venda = (Venda)manager.find(Venda.class, id);
		manager.close();
		return venda;
	}

	public void save(Venda obj) {
		EntityManager manager = Conexao.getEntityManager();
		manager.getTransaction().begin();
		manager.merge(obj);
		manager.getTransaction().commit();
		manager.close();
	}

	public void removeById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Venda venda = (Venda)manager.find(Venda.class, id);
		manager.getTransaction().begin();
		manager.remove(venda);
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Venda> searchAll() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT v FROM Venda v");
		List<Venda> vendas = query.getResultList();
		manager.close();
		return vendas;
	}

}
