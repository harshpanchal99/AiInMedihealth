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
@Table(name="Medicine_table")
public class MedicineVo 
{
	@Id
	@Column(name="Id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="medicine_name")
	private String medicineName;

	@Column(name="medicine_description")
	private String medicineDescription;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMedicineName() {
		return medicineName;
	}

	public void setMedicineName(String medicineName) {
		this.medicineName = medicineName;
	}

	public String getMedicineDescription() {
		return medicineDescription;
	}

	public void setMedicineDescription(String medicineDescription) {
		this.medicineDescription = medicineDescription;
	}

	public DiseaseVo getDiseaseVo() {
		return diseaseVo;
	}

	public void setDiseaseVo(DiseaseVo diseaseVo) {
		this.diseaseVo = diseaseVo;
	}

	@JoinColumn(name="disease_name")
	@ManyToOne
	private DiseaseVo diseaseVo;
	
	@Column(name="Status")
	private Boolean status=true;

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}
	
}
