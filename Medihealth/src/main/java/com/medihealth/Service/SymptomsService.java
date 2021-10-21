package com.medihealth.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.medihealth.Dao.SymptomsDao;
import com.medihealth.Model.SymptomsVo;

@Service
public class SymptomsService 
{
	@Autowired
	SymptomsDao symptomsdao;
	
	@Transactional
	public void SymptomsInsert(SymptomsVo symptomsVo)
	{
		this.symptomsdao.SymptomsInsert(symptomsVo);
	}
	
	@Transactional
	public List SymptomsView(SymptomsVo symptomsVo)
	{
		List symptomsList = this.symptomsdao.SymptomsView(symptomsVo);
		return symptomsList;
	}
	
	@Transactional
	public List SymptomsEdit(SymptomsVo symptomsVo)
	{
		List symptomsEditList = this.symptomsdao.SymptomsEdit(symptomsVo);
		return symptomsEditList;
	}
}
