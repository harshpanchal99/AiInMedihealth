package com.medihealth.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medihealth.Dao.DoctorDAO;
import com.medihealth.Model.DoctorRegisterVo;

@Service
public class RegisterDoctorService 
{
	@Autowired
	DoctorDAO registerDoctorDao;
	
	@Transactional
	public void doctorInsert(DoctorRegisterVo doctorRegisterVo)
	{
		this.registerDoctorDao.insertDoctor(doctorRegisterVo);
	}
	
	@Transactional
	public List getDoctorInformation(DoctorRegisterVo doctorRegisterVo)
	{
		List ls = this.registerDoctorDao.getDoctorInformation(doctorRegisterVo);
		return ls;
	}
		
}
