package com.medihealth.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Xray_table")
public class XrayVo {
	
	@Id
	@Column(name="xrayId")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int xrayId;
	
	@Column(name="predictedDisease")
	private String predictedDisease;
	
	@Column(name="xrayFilePath")
	private String xrayFilePath;
	
	@Column(name="xrayFileName")
	private String xrayFileName;
	
	@ManyToOne
	private LoginVo loginVo;

	public String getXrayFileName() {
		return xrayFileName;
	}

	public void setXrayFileName(String xrayFileName) {
		this.xrayFileName = xrayFileName;
	}

	public int getXrayId() {
		return xrayId;
	}

	public void setXrayId(int xrayId) {
		this.xrayId = xrayId;
	}

	public String getPredictedDisease() {
		return predictedDisease;
	}

	public void setPredictedDisease(String predictedDisease) {
		this.predictedDisease = predictedDisease;
	}

	public String getXrayFilePath() {
		return xrayFilePath;
	}

	public void setXrayFilePath(String xrayFilePath) {
		this.xrayFilePath = xrayFilePath;
	}

	public LoginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(LoginVo loginVo) {
		this.loginVo = loginVo;
	}
	

}
