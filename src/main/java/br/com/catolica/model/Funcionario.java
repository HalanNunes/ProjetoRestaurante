package br.com.catolica.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Funcionario {
	
	@Id
	@GeneratedValue
	private int id_funcionario;
	
	@Column(nullable=false)
	private String nome;
	
	@ManyToOne
	@JoinColumn(name="id_cargo")
	private Cargo id_cargo;
	
	private String cpf;
	
	private String telefone;
	
	private String email;
	
	private String endereco;
	
	private String login;
	
	private String senha;
	
	public int getId_funcionario() {
		return id_funcionario;
	}
	
	public void setId_funcionario(int id_funcionario) {
		this.id_funcionario = id_funcionario;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public Cargo getId_cargo() {
		return id_cargo;
	}
	
	public void setId_cargo(Cargo id_cargo) {
		this.id_cargo = id_cargo;
	}
	
	public String getCpf() {
		return cpf;
	}
	
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	public String getTelefone() {
		return telefone;
	}
	
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEndereco() {
		return endereco;
	}
	
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	
	public String getLogin() {
		return login;
	}
	
	public void setLogin(String login) {
		this.login = login;
	}
	
	public String getSenha() {
		return senha;
	}
	
	public void setSenha(String senha) {
		this.senha = senha;
	}
	
}
