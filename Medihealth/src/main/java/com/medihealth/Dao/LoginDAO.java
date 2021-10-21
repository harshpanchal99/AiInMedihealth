package com.medihealth.Dao;

import java.util.List;

import com.medihealth.Model.LoginVo;
import com.medihealth.Model.UserRegisterVo;

public interface LoginDAO {

	public void register(UserRegisterVo registerVO);

	public void insertLogin(LoginVo loginVO);

	public List searchLoginID(String userName);

}
