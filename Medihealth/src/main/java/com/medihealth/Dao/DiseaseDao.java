package com.medihealth.Dao;

import java.util.List;

import com.medihealth.Model.DiseaseVo;

public interface DiseaseDao 
{
	public void DiseaseInsert(DiseaseVo vo);
	public List DiseaseView(DiseaseVo vo);
	public List DiseaseEdit(DiseaseVo vo);
}
