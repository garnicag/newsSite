package com.pruebas.rest;


import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.CrossOrigin;

import com.pruebas.dao.Ciudad_DAO;
import com.pruebas.model.Ciudad;

@RestController
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST,RequestMethod.DELETE,RequestMethod.PUT})
@RequestMapping("ciudades")
public class CiudadRest {
	
	
	@Autowired
	private Ciudad_DAO ciudadDAO;
	//metodos http para solicitar al servidor 
	
	
	@PostMapping("/guardar")
	public void guardar( @RequestBody Ciudad ciudad) {
		ciudadDAO.save(ciudad);	
	}
	
	
	
	@GetMapping("/listar")
	public List<Ciudad> listar(){
		return ciudadDAO.findAll();
		
	}
	
	
	@GetMapping("/listar/{id}")
	public Optional<Ciudad> listar(@PathVariable("id") Integer id){
		return ciudadDAO.findById(id);
	
	}
	
	
	
	@DeleteMapping("/eliminar/{id}")
	public void eliminar(@PathVariable("id") Integer id) {
		ciudadDAO.deleteById(id);
		
	}
	
	@PutMapping("actualizar")
	public void actualizar(@RequestBody Ciudad ciudad) {
		ciudadDAO.save(ciudad);
		
		
	}
	
	
	

}
