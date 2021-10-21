package com.medihealth.Dao;

import java.util.List;

import com.medihealth.Model.SymptomsVo;

public interface SymptomsDao 
{
	public void SymptomsInsert(SymptomsVo symptomsvo);
	public List SymptomsView(SymptomsVo symptomsvo);
	public List SymptomsEdit(SymptomsVo symptomsvo);
}
