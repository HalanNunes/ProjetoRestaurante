package br.com.catolica.controller;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import br.com.catolica.dao.ProdutoDao;
import br.com.catolica.model.Categoria;
import br.com.catolica.model.Produto;
import br.com.catolica.projetorestaurante.Conexao;

@Path("/produto")
public class ProdutoController {
		
	private ProdutoDao dao = new ProdutoDao();
	
	/*@RequestMapping(value="/search/{id}")
	public Cargo searchById(int id) {
		return dao.searchById(id);
	}*/
	
	@POST
	@Path("/salvarProduto")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response salvarProduto(final String json) throws JsonParseException, JsonMappingException, IOException {
		System.out.println(json);
		Produto ob = new ObjectMapper().readValue(json, Produto.class);
		System.out.println("opaopaopa");
		dao.save(ob);
		System.out.println("opaopaopa");
		return Response.ok("Meu nome é: "+json).build();
	}

	/*@RequestMapping(value="/remove/{id}")
	public void delete(@PathVariable int id) {
		dao.removeById(id);
	}

	public List<Cargo> searchAll() {
		return dao.searchAll();
	}*/
	
	
	@GET
	@Path("/retornaProdutos")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Produto> retornaProdutos() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT p FROM Produto p");
		List<Produto> produtos = query.getResultList();
		manager.close();
		return produtos;
	}
	
	@GET
	@Path("/retornaCategorias")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Categoria> retornaCategorias() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT c FROM Categoria c");
		List<Categoria> categorias = query.getResultList();
		manager.close();
		return categorias;
	}
	
}
