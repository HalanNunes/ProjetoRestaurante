package br.com.catolica.projetorestaurante;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Conexao {
	
	private static EntityManagerFactory factory; 
	
	public static EntityManager getEntityManager(){
		//Gerando banco
		if(factory == null){
			factory = Persistence.createEntityManagerFactory("restaurantedb");
		}
		//Manager de Manipulação
		return factory.createEntityManager();
	}
}
