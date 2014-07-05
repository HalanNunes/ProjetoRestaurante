package br.com.catolica.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.catolica.impl.CrudImpl;
import br.com.catolica.model.Funcionario;
import br.com.catolica.projetorestaurante.Conexao;

public class FuncionarioDao implements CrudImpl<Funcionario>{

	public FuncionarioDao() {}
	
	public Funcionario searchById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Funcionario funcionario = (Funcionario)manager.find(Funcionario.class, id);
		manager.close();
		return funcionario;
	}

	public void removeById(int id) {
		EntityManager manager = Conexao.getEntityManager();
		Funcionario funcionario = (Funcionario)manager.find(Funcionario.class, id);
		manager.getTransaction().begin();
		manager.remove(funcionario);
		manager.getTransaction().commit();
		manager.close();
	}

	public List<Funcionario> searchAll() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT f FROM Funcionario f");
		List<Funcionario> funcionarios = query.getResultList();
		manager.close();
		return funcionarios;
	}

	public void save(Funcionario obj) {
		EntityManager manager = Conexao.getEntityManager();
		manager.getTransaction().begin();
		manager.merge(obj);
		manager.getTransaction().commit();
		manager.close();
	}

}
