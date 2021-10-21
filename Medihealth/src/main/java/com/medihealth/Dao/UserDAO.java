package com.medihealth.Dao;

import java.util.List;

import com.medihealth.Model.UserRegisterVo;

public interface UserDAO {

	void insertRegister(UserRegisterVo registerVO);
	public List getRegisterInfo(UserRegisterVo registerVO);
}
