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

import br.com.catolica.dao.CategoriaDao;
import br.com.catolica.model.Categoria;
import br.com.catolica.projetorestaurante.Conexao;

@Path("/categoria")
public class CategoriaController {
	
	private CategoriaDao dao = new CategoriaDao();
	
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
