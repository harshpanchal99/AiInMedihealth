package com.medihealth.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="detectionMaster")
public class DetectionVo 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="detectionID")
	private int detectionID;
	
	@Column(name="detectionUploadFileName")
	private String uploadFileName;
	
	@Column(name="detectionUploadFilePath")
	private String uploadFilepath;
	
	@Column(name="detectionFileName")
	private String detectionFilename;
	
	@Column(name="detectionFilePath")
	private String detectionFilepath;
	
	@Column(name="detectionDisease")
	private String detectionDisease;
	
	@Column(name="detectionAccuary")
	private String detectionAccuary;

	public int getDetectionID() {
		return detectionID;
	}

	public void setDetectionID(int detectionID) {
		this.detectionID = detectionID;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}

	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}

	public String getUploadFilepath() {
		return uploadFilepath;
	}

	public void setUploadFilepath(String uploadFilepath) {
		this.uploadFilepath = uploadFilepath;
	}

	public String getDetectionFilename() {
		return detectionFilename;
	}

	public void setDetectionFilename(String detectionFilename) {
		this.detectionFilename = detectionFilename;
	}

	public String getDetectionFilepath() {
		return detectionFilepath;
	}

	public void setDetectionFilepath(String detectionFilepath) {
		this.detectionFilepath = detectionFilepath;
	}

	public String getDetectionDisease() {
		return detectionDisease;
	}

	public void setDetectionDisease(String detectionDisease) {
		this.detectionDisease = detectionDisease;
	}

	public String getDetectionAccuary() {
		return detectionAccuary;
	}

	public void setDetectionAccuary(String detectionAccuary) {
		this.detectionAccuary = detectionAccuary;
	}
	
}
