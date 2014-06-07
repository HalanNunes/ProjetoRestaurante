package br.com.catolica.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Cargo {

	@Id
	@GeneratedValue
	private int id_cargo;
	
	@Column(nullable=false)
	private String descricao;

	public int getId_cargo() {
		return id_cargo;
	}

	public void setId_cargo(int id_cargo) {
		this.id_cargo = id_cargo;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
}
