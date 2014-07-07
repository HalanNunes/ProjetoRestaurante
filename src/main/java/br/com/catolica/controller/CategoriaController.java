package br.com.catolica.controller;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import br.com.catolica.dao.CategoriaDao;
import br.com.catolica.model.Categoria;

@Path("/categoria")
public class CategoriaController {
	
	private CategoriaDao dao = new CategoriaDao();
	
	@GET
	@Path("/retornaCategorias")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Categoria> retornaCategorias() {
		return dao.searchAll();
	}
	
}
