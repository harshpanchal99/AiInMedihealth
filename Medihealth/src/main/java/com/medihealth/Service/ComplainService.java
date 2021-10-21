package com.medihealth.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medihealth.Dao.ComplainDao;
import com.medihealth.Model.ComplainVo;

@Service
public class ComplainService 
{
	@Autowired ComplainDao complainDao;
	
	@Transactional
	public void addComplain(ComplainVo complainVo)
	{
		this.complainDao.addComplain(complainVo);
	}
	
	@Transactional
	public List viewComplain(ComplainVo complainVo)
	{
		List viewAllComplain = this.complainDao.viewComplain(complainVo);
		return viewAllComplain;
	}
	
	@Transactional
	public List viewSpcificComplain(ComplainVo complainVo)
	{
		List viewSpecificComplain = this.complainDao.viewSpecificComplain(complainVo);
		return viewSpecificComplain;
	}
	
	@Transactional
	public List viewAllComplains(ComplainVo complainVo)
	{
		List viewMemberComplains = this.complainDao.viewAllComplains(complainVo); //Multiple Complains of Specific Member
		return viewMemberComplains;
	}
}
