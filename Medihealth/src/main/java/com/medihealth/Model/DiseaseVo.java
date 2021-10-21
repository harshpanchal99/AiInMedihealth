package com.medihealth.Model;

import javax.persistence.Column;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DiseaseName_table")
public class DiseaseVo 
{
	@Id
	@Column(name="Id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="DiseaseName")
	private String diseaseName;
	
	@Column(name="DiseaseDescription")
	private String diseaseDescription;

	@Column(name="Status")
	private Boolean status=true;
		
	public int getId() {
		return id;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDiseaseName() {
		return diseaseName;
	}

	public void setDiseaseName(String diseaseName) {
		this.diseaseName = diseaseName;
	}

	public String getDiseaseDescription() {
		return diseaseDescription;
	}

	public void setDiseaseDescription(String diseaseDescription) {
		this.diseaseDescription = diseaseDescription;
	}
}
