package com.medihealth.Dao;

import java.util.List;

import com.medihealth.Model.DoctorRegisterVo;
import com.medihealth.Model.LoginVo;

public interface DoctorDAO 
{
	public void insertDoctor(DoctorRegisterVo doctorRegisterVo);
	public List getDoctorInformation(DoctorRegisterVo doctorRegisterVo);
	
}
