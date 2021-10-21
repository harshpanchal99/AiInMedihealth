package com.medihealth.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="feedback_table")
public class FeedbackVo 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="feedbackID")
	private int feedbackID;
	
	@Column(name="feedbackDescription")
	private String feedbackDescription;
	
	@Column(name="rating")
	private String rating;
	
	@ManyToOne
	private LoginVo loginVO;

	public String getFeedbackDescription() {
		return feedbackDescription;
	}

	public void setFeedbackDescription(String feedbackDescription) {
		this.feedbackDescription = feedbackDescription;
	}

	public int getFeedbackID() {
		return feedbackID;
	}

	public void setFeedbackID(int feedbackID) {
		this.feedbackID = feedbackID;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public LoginVo getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVo loginVO) {
		this.loginVO = loginVO;
	}	
	 
	
}
