package com.medihealth.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDaoImpl implements AdminDao{
	
	@Autowired SessionFactory sessionFactory;
	
	public List viewAllUser()
	{
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from UserRegisterVo");
		List viewAllUser = q.list();
		return viewAllUser;
	}
	
	public List viewAllDoctor()
	{
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from DoctorRegisterVo");
		List viewAllDoctor = q.list();
		return viewAllDoctor;
	}

}
