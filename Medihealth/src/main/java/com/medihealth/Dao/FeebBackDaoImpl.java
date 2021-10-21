package com.medihealth.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.FeedbackVo;

@Repository
public class FeebBackDaoImpl implements FeedBackDao {
	
	@Autowired SessionFactory sessionFactory;
	
	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionFactory = sessionfactory;
	}
	
	public void addFeedBack(FeedbackVo feedbackVo)
	{
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(feedbackVo);
	}
	
	public List viewFeedBack(FeedbackVo feedbackVo)
	{
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from FeedbackVo");
		List viewFeedbackList = q.list();
		return viewFeedbackList;
	}

}
