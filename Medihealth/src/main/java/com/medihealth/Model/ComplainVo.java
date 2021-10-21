package com.medihealth.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="complain_table")
public class ComplainVo 
{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="complainID")
	private int complainID;
	
	@Column(name="subject")
	private String subject;
	
	@Column(name="description")
	private String description;
	
	@Column(name="complain_date")
	private String complain_date;
	
	@Column(name="reply")
	private String reply;
	
	@Column(name="reply_date")
	private String reply_date;
	
	@Column(name="status")
	private String status;
	
	@ManyToOne
	private LoginVo loginVo;

	public int getComplainID() {
		return complainID;
	}

	public void setComplainID(int complainID) {
		this.complainID = complainID;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getComplain_date() {
		return complain_date;
	}

	public void setComplain_date(String complain_date) {
		this.complain_date = complain_date;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public String getReply_date() {
		return reply_date;
	}

	public void setReply_date(String reply_date) {
		this.reply_date = reply_date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public LoginVo getLoginVo() {
		return loginVo;
	}

	public void setLoginVo(LoginVo loginVo) {
		this.loginVo = loginVo;
	}
}
