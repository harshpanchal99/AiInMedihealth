package com.medihealth.Dao;

import java.util.List;

import com.medihealth.Model.FeedbackVo;

public interface FeedBackDao 
{
	public void addFeedBack(FeedbackVo feedbackVo);
	public List viewFeedBack(FeedbackVo feedbackVo);
		
}
