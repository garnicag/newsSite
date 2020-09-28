package com.pruebas.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Ciudad {
	
	@Id
	private Integer id;
	
	@Column
	private String nombre ;
	
	@Column
	private String clima_actual ;
	
	@Column
	private Integer tmax ;
	
	@Column
	private Integer tmin ;

	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getClima_actual() {
		return clima_actual;
	}

	public void setClima_actual(String clima_actual) {
		this.clima_actual = clima_actual;
	}

	public Integer getTmax() {
		return tmax;
	}

	public void setTmax(Integer tmax) {
		this.tmax = tmax;
	}

	public Integer getTmin() {
		return tmin;
	}

	public void setTmin(Integer tmin) {
		this.tmin = tmin;
	}

	
	
	}
