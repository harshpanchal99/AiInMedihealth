package com.medihealth.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medihealth.Dao.LoginDAO;
import com.medihealth.Model.LoginVo;
import com.medihealth.Model.UserRegisterVo;


@Service
public class LoginService {

	@Autowired
	LoginDAO loginDAO;

	@Transactional
	public void insertRegister(UserRegisterVo registerVO) {
		loginDAO.register(registerVO);
	}

	@Transactional
	public void insertLogin(LoginVo loginVO) {
		// TODO Auto-generated method stub
		loginDAO.insertLogin(loginVO);
	}

	@Transactional
	public List searchLoginID(String userName) {
		// TODO Auto-generated method stub
		List ls = loginDAO.searchLoginID(userName);
		return ls;
	}
}