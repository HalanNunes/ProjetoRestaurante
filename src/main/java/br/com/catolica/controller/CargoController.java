package br.com.catolica.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.catolica.dao.CargoDao;
import br.com.catolica.model.Cargo;

@Controller
@RequestMapping("/cargo")
public class CargoController{
	
	private final CargoDao dao;
	
	@Autowired
    public CargoController(final CargoDao dao) {
        this.dao = dao;
    }
	
	@RequestMapping(value="/novo")
	public ModelAndView novo(){
		return new ModelAndView("cargo/novo", "cargo", new Cargo());
	}
	
	@RequestMapping(value="/search/{id}")
	public Cargo searchById(int id) {
		return dao.searchById(id);
	}
	
	@RequestMapping(value="/save")
	public void save(Cargo obj) {
		dao.save(obj);
	}

	@RequestMapping(value="/remove/{id}")
	public void delete(@PathVariable int id) {
		dao.removeById(id);
	}

	public List<Cargo> searchAll() {
		return dao.searchAll();
	}
	
}
