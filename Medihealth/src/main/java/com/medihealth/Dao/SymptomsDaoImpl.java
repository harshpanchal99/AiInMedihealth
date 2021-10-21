package com.medihealth.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.SymptomsVo;

@Repository
public class SymptomsDaoImpl implements SymptomsDao 
{
	@Autowired
	SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	@Override
	public void SymptomsInsert(SymptomsVo symptomsVo)
	{
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(symptomsVo);
	}
	
	@Override
	public List SymptomsView(SymptomsVo symptomsVo)
	{
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from SymptomsVo where status="+true+" ");
		List symptomsList = query.list();
		return symptomsList;
	}
	
	@Override
	public List SymptomsEdit(SymptomsVo symptomsVo)
	{
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from SymptomsVo where id="+symptomsVo.getId()+"");
		List viewSymptomsList = q.list();
		return viewSymptomsList;
	}
	
}
