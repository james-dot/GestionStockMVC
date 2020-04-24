package com.stock.mvc.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Vente implements Serializable{
	
	@Id
	@GeneratedValue
	private Long idVente;
	
	private String code;
	
	@Temporal(TemporalType.TIMESTAMP)
	private Date dateVente;
	
	@OneToMany(mappedBy ="vente")
	private List<LigneVente> ligneVente;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getDateVente() {
		return dateVente;
	}

	public void setDateVente(Date dateVente) {
		this.dateVente = dateVente;
	}

	public List<LigneVente> getLigneVente() {
		return ligneVente;
	}

	public void setLigneVente(List<LigneVente> ligneVente) {
		this.ligneVente = ligneVente;
	}

	public Vente() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getIdVente() {
		return idVente;
	}

	public void setIdVente(Long idCategorie) {
		this.idVente = idCategorie;
	}
	
}
