package com.medihealth.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.medihealth.Dao.DiseaseDao;
import com.medihealth.Model.DiseaseVo;


@Service
public class DiseaseService {

	@Autowired
	DiseaseDao dao;
	
	@Transactional
	public void DiseaseInsert(DiseaseVo diseasevo)
	{
		this.dao.DiseaseInsert(diseasevo);
	}
	
	@Transactional 
	public List DiseaseView(DiseaseVo diseasevo)
	{
		List viewDiseaseList = this.dao.DiseaseView(diseasevo);
		return viewDiseaseList;
	}
	
	@Transactional
	public List DiseaseEdit(DiseaseVo diseasevo)
	{
		List viewDiseaseList = this.dao.DiseaseEdit(diseasevo);
		return viewDiseaseList;
	}
	
}
