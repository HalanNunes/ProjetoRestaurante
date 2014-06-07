package br.com.catolica.projetorestaurante;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.catolica.model.Cargo;

public class Execução {

	public static void save(Cargo cargo){
		EntityManager manager = Conexao.getEntityManager();
		manager.getTransaction().begin();//Transaction só é usada quando haver mudança no banco, INSERT, DELETE, UPDATE
		manager.merge(cargo);
		manager.getTransaction().commit();
		manager.close();
	}
	
	public static Cargo searchById(int id){
		EntityManager manager = Conexao.getEntityManager();
		Cargo cargo = (Cargo)manager.find(Cargo.class, id);
		manager.close();
		return cargo;
	}
	
	/*public static void removeById(int id){
		EntityManager manager = Conexao.getEntityManager();
		Carro carro = (Carro)manager.find(Carro.class, id);
		manager.getTransaction().begin();
		manager.remove(carro);
		manager.getTransaction().commit();
		manager.close();
	}
	
	*/
	
	/*public static List<Cargo> searchAll(){
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT * FROM cargo");
		List<Cargo> cargos = query.getResultList();
		manager.close();
		return cargos;
	}*/
	
	/*public static List<Carro> searchByYear(int ano){
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT c FROM Carro c WHERE c.ano > :ano");
		query.setParameter("ano", ano);
		List<Carro> carros = query.getResultList();
		manager.close();
		return carros;
	}*/
	
	public static void main(String[] args) {
		Cargo cargo = new Cargo();
		cargo.setDescricao("Opa");
		save(cargo);
		
		/*Cargo cargo = searchById(1);
		System.out.println(cargo.getDescricao());*/
		
		
		/*List<Cargo> cargos = searchAll(); 
		for(Cargo cargo2 : cargos){
			System.out.println("Descrição: "+cargo2.getDescricao());
		}*/
		
		/*List<Carro> carros = searchByYear(2014); 
		for(Carro carro2 : carros){
			System.out.println("Cor: "+carro2.getCor());
		}*/
		
		//insert(carro);
		//delete(carro);
		//findCarro(carro);
	}

}
