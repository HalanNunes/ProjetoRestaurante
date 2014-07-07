package br.com.catolica.controller;

import java.io.IOException;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

import br.com.catolica.dao.ProdutoDao;
import br.com.catolica.model.Produto;

@Path("/produto")
public class ProdutoController {
		
	private ProdutoDao dao = new ProdutoDao();
	
	@POST
	@Path("/salvarProduto")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response salvarProduto(final String json) throws JsonParseException, JsonMappingException, IOException {
		Produto ob = new ObjectMapper().readValue(json, Produto.class);
		dao.save(ob);
		return Response.ok("Meu nome é: "+json).build();
	}
	
	@GET
	@Path("/retornaCardapio")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Produto> retornaCardapio() {
		return dao.searchAll();
	}
	
	@GET
	@Path("/retornarProduto/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Produto retornarProduto(@PathParam("id") String id){
		return dao.searchById(Integer.parseInt(id));
	}
	
	@GET
	@Path("/retornaProdutos")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Produto> retornaProdutos() {
		return dao.searchAll();
	}
	
	
	@DELETE
	@Path("/excluirPath/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public String excluirItem(@PathParam("id") String id){
		System.out.println("opaopaopaopaopaopa");
		return "Irá excluir o cliente "+id;
	}
	
}
