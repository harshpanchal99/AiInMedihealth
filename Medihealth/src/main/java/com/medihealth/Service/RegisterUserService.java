package com.medihealth.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.medihealth.Dao.UserDAO;
import com.medihealth.Model.UserRegisterVo;
@Service
public class RegisterUserService {
	
	@Autowired UserDAO registerDAO;
	
	@Transactional
	public void insertRegister(UserRegisterVo registerVO) {
		this.registerDAO.insertRegister(registerVO);
	}
	
	@Transactional
	public List getUserRegisterInfo(UserRegisterVo registerVO)
	{
		List userRegisterInfo = this.registerDAO.getRegisterInfo(registerVO);
		return userRegisterInfo;
	}

}
