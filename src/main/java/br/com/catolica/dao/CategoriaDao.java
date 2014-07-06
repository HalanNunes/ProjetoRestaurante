package br.com.catolica.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.catolica.impl.CrudImpl;
import br.com.catolica.model.Categoria;
import br.com.catolica.projetorestaurante.Conexao;

public class CategoriaDao implements CrudImpl<Categoria>{

	public Categoria searchById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Categoria categoria = (Categoria)manager.find(Categoria.class, id);
		manager.close();
		return categoria;
	}
	
	public void save(final Categoria obj) {
		EntityManager manager = Conexao.getEntityManager();
		manager.getTransaction().begin();
		manager.merge(obj);
		manager.getTransaction().commit();
		manager.close();
	}

	public void removeById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Categoria categoria = (Categoria)manager.find(Categoria.class, id);
		manager.getTransaction().begin();
		manager.remove(categoria);
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Categoria> searchAll() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT * FROM Categoria");
		List<Categoria> categorias = query.getResultList();
		manager.close();
		return categorias;
	}

}
