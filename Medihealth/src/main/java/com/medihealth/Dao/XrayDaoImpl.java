package com.medihealth.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.XrayVo;

@Repository
public class XrayDaoImpl implements XrayDao 
{
	@Autowired 
	SessionFactory sessionfactory;
	
	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}
	
	public void uploadXray(XrayVo xrayVo)
	{
		Session session = sessionfactory.getCurrentSession();
		session.saveOrUpdate(xrayVo);
	}
}
