package br.com.restaurante;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jettison.json.JSONObject;

import br.com.catolica.model.Funcionario;
import br.com.catolica.projetorestaurante.Conexao;

@Path("/funcionario")
public class FuncionarioControl {
	
	@GET
	@Path("/sum")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response sum() {
		return Response.ok("Deu certofdafdafdasfdsa").build();
	}
	
	/*@POST
	@Path("/salvarFuncionario")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_HTML)
	public Response salvarFuncionario(String nome) {
		Funcionario func = new Funcionario();
		func.setNome(nome);
		
		EntityManager manager = Conexao.getEntityManager();
		manager.getTransaction().begin();//Transaction só é usada quando haver mudança no banco, INSERT, DELETE, UPDATE
		manager.merge(func);
		manager.getTransaction().commit();
		manager.close();
		
		return Response.ok("Meu nome é: "+nome).build();
	}*/
	
	@POST
	@Path("/salvarFuncionario")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response salvarFuncionario(final String json) throws JsonParseException, JsonMappingException, IOException {
		
		Funcionario ob = new ObjectMapper().readValue(json, Funcionario.class);
		
		EntityManager manager = Conexao.getEntityManager();
		manager.getTransaction().begin();//Transaction só é usada quando haver mudança no banco, INSERT, DELETE, UPDATE
		manager.merge(ob);
		manager.getTransaction().commit();
		manager.close();
		
		return Response.ok("Meu nome é: "+json).build();
	}
}
