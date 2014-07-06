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
import br.com.catolica.dao.VendaDao;
import br.com.catolica.model.Categoria;
import br.com.catolica.model.Produto;
import br.com.catolica.model.Venda;
import br.com.catolica.projetorestaurante.Conexao;

@Path("/venda")
public class VendaController {
	
	private VendaDao dao = new VendaDao();
	
	/*@RequestMapping(value="/search/{id}")
	public Cargo searchById(int id) {
		return dao.searchById(id);
	}*/
	
	@POST
	@Path("/salvarVenda")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response salvarVenda(final String json) throws JsonParseException, JsonMappingException, IOException {
		Venda ob = new ObjectMapper().readValue(json, Venda.class);
		dao.save(ob);
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
	@Path("/retornaVendas")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Venda> retornaVendas() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT v FROM Venda v");
		List<Venda> vendas = query.getResultList();
		manager.close();
		return vendas;
	}
	
}
