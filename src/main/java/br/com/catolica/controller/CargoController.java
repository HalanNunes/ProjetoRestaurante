package br.com.catolica.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import br.com.catolica.dao.CargoDao;
import br.com.catolica.model.Cargo;
import br.com.catolica.projetorestaurante.Conexao;

@Path("/cargo")
public class CargoController{
	
	private CargoDao dao = new CargoDao();
	
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
