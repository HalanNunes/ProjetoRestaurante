package br.com.catolica.projetorestaurante;

import java.util.Date;

import javax.persistence.EntityManager;

import br.com.catolica.model.Cargo;
import br.com.catolica.model.Categoria;
import br.com.catolica.model.Funcionario;
import br.com.catolica.model.Produto;
import br.com.catolica.model.Venda;

public class Execução {

	public static void save(Venda funcionario){
		EntityManager manager = Conexao.getEntityManager();
		manager.getTransaction().begin();//Transaction só é usada quando haver mudança no banco, INSERT, DELETE, UPDATE
		manager.merge(funcionario);
		manager.getTransaction().commit();
		manager.close();
	}
	
	public static Categoria searchById(int id){
		EntityManager manager = Conexao.getEntityManager();
		Categoria cargo = (Categoria)manager.find(Categoria.class, id);
		manager.close();
		return cargo;
	}
	
	public static Produto searchProdutoById(int id){
		EntityManager manager = Conexao.getEntityManager();
		Produto produto = (Produto)manager.find(Produto.class, id);
		manager.close();
		return produto;
	}
	
	public static Funcionario searchFuncionarioById(int id){
		EntityManager manager = Conexao.getEntityManager();
		Funcionario funcionario = (Funcionario)manager.find(Funcionario.class, id);
		manager.close();
		return funcionario;
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
		/*Cargo cargo = new Cargo();
		cargo.setDescricao("Opa");
		save(cargo);*/
		
		/*Funcionario funcionario = new Funcionario();
		funcionario.setNome("Robervaldo");
		funcionario.setId_cargo(searchById(1));
		save(funcionario);*/
		
		/*Categoria categoria = new Categoria();
		categoria.setDescricao("Lanche");
		save(categoria);*/
		
		
		/*Produto produto = new Produto();
		produto.setDescricao("Batata-frita");
		produto.setValor(1.00);
		produto.setId_categoria(searchById(1));
		produto.setCusto(0.50);
		produto.setQtde_estoque(5);
		save(produto);*/
		
		Venda venda = new Venda();
		venda.setId_funcionario(searchFuncionarioById(1));
		venda.setId_produto(searchProdutoById(1));
		venda.setForma_pgto(1);
		venda.setMesa(3);
		venda.setQtd_produto(4);
		venda.setStatus(1);
		venda.setValor_produto(4.55);
		venda.setDatahora_pedido(new Date());
		save(venda);
		
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
