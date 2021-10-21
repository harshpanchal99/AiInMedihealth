package com.medihealth.Service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medihealth.Dao.DatasetDao;
import com.medihealth.Model.DatasetVo;

@Service
public class DatasetService 
{
	@Autowired
	DatasetDao datasetDao;
	
	@Transactional
	public void fileupload(DatasetVo datasetVo)
	{
		this.datasetDao.FileUpload(datasetVo);
	}
}
