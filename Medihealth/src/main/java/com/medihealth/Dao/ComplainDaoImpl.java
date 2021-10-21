package com.medihealth.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.ComplainVo;
import com.medihealth.Model.LoginVo;
import com.medihealth.Utils.Basemethods;

@Repository
public class ComplainDaoImpl implements ComplainDao 
{
	@Autowired SessionFactory sessionFactory;
	
	public void addComplain(ComplainVo complainVo)
	{
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(complainVo);
	}
	
	public List viewComplain(ComplainVo complainVo)
	{
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplainVo");
		List viewAllComplain = q.list();
		return viewAllComplain;
	}
	
	public List viewSpecificComplain(ComplainVo complainVo)
	{
		Session session = sessionFactory.getCurrentSession();
		System.out.println("IN COMPLAIN CONTROLLER "+complainVo.getComplainID());
		Query q = session.createQuery("from ComplainVo where complainID="+complainVo.getComplainID()+"");
		List viewSpecificComplain = q.list();
		return viewSpecificComplain;
	}
	
	public List viewAllComplains(ComplainVo complainVo) //Multiple Complains of Specific User
	{
		Session session = sessionFactory.getCurrentSession();
		String username = Basemethods.getUser();
		
		Query q = session.createQuery("from LoginVo where username ='"+username+"' ");
		List docInfo = q.list();
		LoginVo loginVo = (LoginVo) docInfo.get(0);
		
		int id = loginVo.getLoginId();
		
		Query getComplainList = session.createQuery("from ComplainVo where loginVo ="+id+" ");
		List userComplains= getComplainList.list();
		return userComplains;
	}
	
	
}
