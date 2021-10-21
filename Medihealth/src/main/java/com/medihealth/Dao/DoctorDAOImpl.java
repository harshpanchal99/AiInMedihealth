package com.medihealth.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.DoctorRegisterVo;
import com.medihealth.Model.LoginVo;
import com.medihealth.Utils.Basemethods;

@Repository
public class DoctorDAOImpl implements DoctorDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionFactory = sessionfactory;
	}
	
	@Override
	public void insertDoctor(DoctorRegisterVo doctorRegisterVo) 
	{
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(doctorRegisterVo);
	}

	@Override
	public List getDoctorInformation(DoctorRegisterVo doctorRegisterVo) //Object in parameter has no use.
	{
		Session session = sessionFactory.getCurrentSession();
		String username = Basemethods.getUser();
		
		Query q = session.createQuery("from LoginVo where username ='"+username+"' ");
		List docInfo = q.list();
		LoginVo loginVo = (LoginVo) docInfo.get(0);
		
		int id = loginVo.getLoginId();
		System.out.println(id);
		
		Query doctorInfo = session.createQuery("from DoctorRegisterVo where loginVo ="+id+" ");
		List doctorInformation = doctorInfo.list(); 
		
		return doctorInformation;
	}
	
	

}
