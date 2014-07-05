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
import org.codehaus.jettison.json.JSONException;
import org.codehaus.jettison.json.JSONObject;

import br.com.catolica.dao.CargoDao;
import br.com.catolica.dao.FuncionarioDao;
import br.com.catolica.model.Cargo;
import br.com.catolica.model.Funcionario;
import br.com.catolica.projetorestaurante.Conexao;

@Path("/funcionario")
public class FuncionarioController {
	
	private FuncionarioDao dao = new FuncionarioDao();
	private CargoDao daoCargo = new CargoDao();
	
	/*@RequestMapping(value="/search/{id}")
	public Cargo searchById(int id) {
		return dao.searchById(id);
	}*/
	
	@POST
	@Path("/salvarFuncionario")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response salvarFuncionario(final String json) throws JsonParseException, JsonMappingException, IOException, JSONException {
		Funcionario ob = new ObjectMapper().readValue(json, Funcionario.class);
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
	@Path("/retornaFuncionarios")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Funcionario> retornaFuncionarios() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT f FROM Funcionario f");
		List<Funcionario> funcionarios = query.getResultList();
		manager.close();
		return funcionarios;
	}
	
	@GET
	@Path("/retornaCargos")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Cargo> retornaCargos() {
		EntityManager manager = Conexao.getEntityManager();
		Query query = manager.createQuery("SELECT c FROM Cargo c");
		List<Cargo> cargos = query.getResultList();
		manager.close();
		return cargos;
	}
	
}
