package com.stock.mvc.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class CommandeClient implements Serializable{
	
	@Id
	@GeneratedValue
	private Long idCommandeClient;
	private String code;
	
	@Temporal(TemporalType.TIMESTAMP)//pour prendre date et heure
	private Date dateCommande;
	
	@ManyToOne
	@JoinColumn(name="idClient")
	private Client client;
	
	@OneToMany(mappedBy ="commandeClient")
	private List<LigneCommandeClient> ligneCommandeClient;
	
	
	public CommandeClient() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getIdCommandeClient() {
		return idCommandeClient;
	}

	public void setIdCommandeClient(Long idCategorie) {
		this.idCommandeClient = idCategorie;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getDateCommande() {
		return dateCommande;
	}

	public void setDateCommande(Date dateCommande) {
		this.dateCommande = dateCommande;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public List<LigneCommandeClient> getLigneCommandeClient() {
		return ligneCommandeClient;
	}

	public void setLigneCommandeClient(List<LigneCommandeClient> ligneCommandeClient) {
		this.ligneCommandeClient = ligneCommandeClient;
	}
	
}
