package br.com.catolica.controller;

import java.io.IOException;
import java.util.List;

import javax.ws.rs.Consumes;
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
import org.codehaus.jettison.json.JSONException;

import br.com.catolica.dao.FuncionarioDao;
import br.com.catolica.model.Funcionario;

@Path("/funcionario")
public class FuncionarioController {
	
	private FuncionarioDao dao = new FuncionarioDao();
		
	@POST
	@Path("/salvarFuncionario")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response salvarFuncionario(final String json) throws JsonParseException, JsonMappingException, IOException, JSONException {
		Funcionario ob = new ObjectMapper().readValue(json, Funcionario.class);
		dao.save(ob);
		return Response.ok("Meu nome é: "+json).build();
	}

	@GET
	@Path("/retornaFuncionarios")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Funcionario> retornaFuncionarios() {
		return dao.searchAll();
	}
	
	@GET
	@Path("/retornarFuncionario/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Funcionario retornarFuncionario(@PathParam("id") String id){
		return dao.searchById(Integer.parseInt(id));
	}
}
