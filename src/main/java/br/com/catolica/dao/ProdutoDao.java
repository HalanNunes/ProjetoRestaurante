package br.com.catolica.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.catolica.impl.CrudImpl;
import br.com.catolica.model.Produto;
import br.com.catolica.projetorestaurante.Conexao;

public class ProdutoDao implements CrudImpl<Produto>{

	public Produto searchById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Produto produto = (Produto)manager.find(Produto.class, id);
		manager.close();
		return produto;
	}

	public void save(Produto obj) {
		EntityManager manager = Conexao.getEntityManager();
		manager.getTransaction().begin();
		manager.merge(obj);
		manager.getTransaction().commit();
		manager.close();
	}

	public void removeById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Produto produto = (Produto)manager.find(Produto.class, id);
		manager.getTransaction().begin();
		manager.remove(produto);
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Produto> searchAll() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT p FROM Produto p");
		List<Produto> produtos = query.getResultList();
		manager.close();
		return produtos;
	}

}
