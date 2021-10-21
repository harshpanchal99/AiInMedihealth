package com.medihealth.Dao;

import java.util.List;

import com.medihealth.Model.ComplainVo;

public interface ComplainDao 
{
	public void addComplain(ComplainVo complainVo);
	public List viewComplain(ComplainVo complainVo);
	public List viewSpecificComplain(ComplainVo complainVo);
	public List viewAllComplains(ComplainVo complainVo);//Multiple Complains of Specific User
}
