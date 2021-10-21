package com.medihealth.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medihealth.Dao.FeedBackDao;
import com.medihealth.Model.FeedbackVo;

@Service
public class FeedbackService 
{
	@Autowired FeedBackDao feedbackDao;
	
	@Transactional
	public void addFeedback(FeedbackVo feedbackVo)
	{
		this.feedbackDao.addFeedBack(feedbackVo);
	}
	
	@Transactional
	public List viewFeedback(FeedbackVo feedbackVo)
	{
		List viewFeedbackList = this.feedbackDao.viewFeedBack(feedbackVo);
		return viewFeedbackList;
	}
}
