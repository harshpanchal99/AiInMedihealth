package com.medihealth.Dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.DatasetVo;

@Repository
public class DatasetDaoImpl implements DatasetDao{
	@Autowired
	SessionFactory sessionfactory;
	
	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}

	@Override
	public void FileUpload(DatasetVo datasetVo) 
	{
		Session session = sessionfactory.getCurrentSession();
		session.saveOrUpdate(datasetVo);

	}

}
