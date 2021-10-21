package com.medihealth.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.LoginVo;
import com.medihealth.Model.UserRegisterVo;

@Repository
public class LoginDAOImp implements LoginDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void register(UserRegisterVo registerVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);
	}
	@Override
	public void insertLogin(LoginVo loginVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(loginVO);
	}
	
	@Override
	public List searchLoginID(String userName) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVo where username = '"+userName+"' ");
		List ls = q.list();
		return ls;
	}
}