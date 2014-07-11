package br.com.catolica.projetorestaurante;

import br.com.catolica.dao.CargoDao;
import br.com.catolica.dao.CategoriaDao;
import br.com.catolica.model.Cargo;
import br.com.catolica.model.Categoria;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Conexao {
	
	private static EntityManagerFactory factory; 
	
	public static EntityManager getEntityManager(){
		//Gerando banco
		if(factory == null){
			factory = Persistence.createEntityManagerFactory("restaurantedb");
			initData();
		}
		//Manager de Manipulação
		return factory.createEntityManager();
	}

	private static void initData() {
		CargoDao daoCargo = new CargoDao();
		
		Cargo cargo = new Cargo();
		cargo.setDescricao("Garçon");
		daoCargo.save(cargo);
		Cargo cargo1 = new Cargo();
		cargo1.setDescricao("Auxiliar de cozinha");
		daoCargo.save(cargo1);
		Cargo cargo2 = new Cargo();
		cargo2.setDescricao("Zelador");
		daoCargo.save(cargo2);
		Cargo cargo3 = new Cargo();
		cargo3.setDescricao("Atendente Caixa");
		daoCargo.save(cargo3);
		Cargo cargo4 = new Cargo();
		cargo4.setDescricao("Gerente");
		daoCargo.save(cargo4);
		
		
		CategoriaDao daoCat = new CategoriaDao();
		
		Categoria cat2 = new Categoria();
		cat2.setDescricao("Bebida");
		daoCat.save(cat2);
		Categoria cat = new Categoria();
		cat.setDescricao("Lanche");
		daoCat.save(cat);
		Categoria cat1 = new Categoria();
		cat1.setDescricao("Porção");
		daoCat.save(cat1);
		Categoria cat3 = new Categoria();
		cat3.setDescricao("Sobremesa");
		daoCat.save(cat3);
	}
}
