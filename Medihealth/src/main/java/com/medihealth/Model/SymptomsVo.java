package com.medihealth.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Symptoms_Table")
public class SymptomsVo 
{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="Id")
	private int id;
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public DiseaseVo getDiseaseVo() {
		return diseaseVo;
	}


	public void setDiseaseVo(DiseaseVo diseaseVo) {
		this.diseaseVo = diseaseVo;
	}


	public String getSymptoms() {
		return symptoms;
	}


	public void setSymptoms(String symptoms) {
		this.symptoms = symptoms;
	}


	@JoinColumn(name="disease_name")
	@ManyToOne
	private DiseaseVo diseaseVo;
	
	
	@Column(name="symptoms")
	private String symptoms;
	
	@Column(name="Status")
	private Boolean status=true;

	public Boolean getStatus() {
		return status;
	}


	public void setStatus(Boolean status) {
		this.status = status;
	}
	
}
