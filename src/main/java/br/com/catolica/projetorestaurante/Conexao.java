package br.com.catolica.projetorestaurante;

import br.com.catolica.dao.CargoDao;
import br.com.catolica.dao.CategoriaDao;
import br.com.catolica.model.Cargo;
import br.com.catolica.model.Categoria;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Conexao {
	private static CargoDao daoCargo = new CargoDao();
	private static CategoriaDao daoCategoria = new CategoriaDao();
	private static EntityManagerFactory factory; 
	
	public static EntityManager getEntityManager(){
		//Gerando banco
		if(factory == null){
			factory = Persistence.createEntityManagerFactory("restaurantedb");
			initData();
		}
		//Manager de Manipula��o
		return factory.createEntityManager();
	}

	private static void initData() {
		Cargo cargo = new Cargo();
		cargo.setDescricao("Gar�on");
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

		
		Categoria cat2 = new Categoria();
		cat2.setDescricao("Bebida");
		daoCategoria.save(cat2);
		Categoria cat = new Categoria();
		cat.setDescricao("Lanche");
		daoCategoria.save(cat);
		Categoria cat1 = new Categoria();
		cat1.setDescricao("Por��o");
		daoCategoria.save(cat1);
		Categoria cat3 = new Categoria();
		cat3.setDescricao("Sobremesa");
		daoCategoria.save(cat3);
	}
}
