package com.medihealth.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.LoginVo;
import com.medihealth.Model.UserRegisterVo;
import com.medihealth.Utils.Basemethods;


@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void insertRegister(UserRegisterVo registerVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);
	}
	
	public List getRegisterInfo(UserRegisterVo registerVO) //Object in parameter has no use.
	{
		Session session = sessionFactory.getCurrentSession();
		String username = Basemethods.getUser();
		
		System.out.println(username+" from DAO getRegisterInfo");
		
		Query q = session.createQuery("from LoginVo where username ='"+username+"' ");
		List docInfo = q.list();
		LoginVo loginVo = (LoginVo) docInfo.get(0);
		
		int id = loginVo.getLoginId();
		System.out.println(id);
		
		Query userInfo = session.createQuery("from UserRegisterVo where loginVo ="+id+" ");
		List userInformation = userInfo.list(); 
		
		return userInformation;
	}
	
	
}
