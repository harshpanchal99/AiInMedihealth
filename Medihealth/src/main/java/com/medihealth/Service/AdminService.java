package com.medihealth.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medihealth.Dao.AdminDao;

@Service
public class AdminService 
{
	@Autowired AdminDao adminDao;
	
	@Transactional
	public List viewAllDoctor()
	{
		List  viewAllDoctor = this.adminDao.viewAllDoctor();
		return viewAllDoctor ;
	}
	
	@Transactional
	public List viewAllUser()
	{
		List  viewAllUser = this.adminDao.viewAllUser();
		return viewAllUser ;
	}
	
	
	
}
