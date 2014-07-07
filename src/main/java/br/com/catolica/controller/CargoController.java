package br.com.catolica.controller;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import br.com.catolica.dao.CargoDao;
import br.com.catolica.model.Cargo;

@Path("/cargo")
public class CargoController{
	
	private CargoDao dao = new CargoDao();
	
	@GET
	@Path("/retornaCargos")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Cargo> retornaCargos() {
		return dao.searchAll();
	}
	
}
