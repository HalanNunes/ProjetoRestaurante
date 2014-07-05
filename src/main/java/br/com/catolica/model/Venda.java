package br.com.catolica.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Venda implements Serializable{
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int id_venda;
	
	@ManyToOne
	@JoinColumn(name="id_produto")
	private Produto id_produto;
	
	@Column(nullable=false, length=10, precision=4)
	private double valor_produto;  
	
	@Column(nullable=false)
	private int mesa;
	
	@ManyToOne
	@JoinColumn(name="id_funcionario")
	private Funcionario id_funcionario;
	
	@Column(nullable=false)
	private int qtd_produto;
	
	@Column(nullable=false)
	private int forma_pgto;
	
	@Column(nullable=false)
	private int status;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(nullable=false)
	private Date datahora_pedido;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date datahora_pagamento;

	public int getId_venda() {
		return id_venda;
	}

	public void setId_venda(int id_venda) {
		this.id_venda = id_venda;
	}

	public Produto getId_produto() {
		return id_produto;
	}

	public void setId_produto(Produto id_produto) {
		this.id_produto = id_produto;
	}

	public double getValor_produto() {
		return valor_produto;
	}

	public void setValor_produto(double valor_produto) {
		this.valor_produto = valor_produto;
	}

	public int getMesa() {
		return mesa;
	}

	public void setMesa(int mesa) {
		this.mesa = mesa;
	}

	public Funcionario getId_funcionario() {
		return id_funcionario;
	}

	public void setId_funcionario(Funcionario id_funcionario) {
		this.id_funcionario = id_funcionario;
	}

	public int getQtd_produto() {
		return qtd_produto;
	}

	public void setQtd_produto(int qtd_produto) {
		this.qtd_produto = qtd_produto;
	}

	public int getForma_pgto() {
		return forma_pgto;
	}

	public void setForma_pgto(int forma_pgto) {
		this.forma_pgto = forma_pgto;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getDatahora_pedido() {
		return datahora_pedido;
	}

	public void setDatahora_pedido(Date datahora_pedido) {
		this.datahora_pedido = datahora_pedido;
	}

	public Date getDatahora_pagamento() {
		return datahora_pagamento;
	}

	public void setDatahora_pagamento(Date datahora_pagamento) {
		this.datahora_pagamento = datahora_pagamento;
	}
	
}
