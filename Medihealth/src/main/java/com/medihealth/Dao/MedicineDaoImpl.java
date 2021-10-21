package com.medihealth.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.DiseaseVo;
import com.medihealth.Model.MedicineVo;

@Repository
public class MedicineDaoImpl implements MedicineDao 
{
	@Autowired
	SessionFactory sessionfactory;
	
	public void setSessionfactory(SessionFactory sessionfactory) {
		this.sessionfactory = sessionfactory;
	}
	
	@Override
	public void MedicineInsert(MedicineVo medicinevo)
	{
		Session session = sessionfactory.getCurrentSession();
		session.saveOrUpdate(medicinevo);
	}
	
	@Override
	public List MedicineView(MedicineVo medicinevo)
	{
		Session session = sessionfactory.getCurrentSession();
		Query q = session.createQuery("from MedicineVo where status="+true+"");
		List medicineList = q.list();
		return medicineList;
	}

	public List MedicineEdit(MedicineVo medicinevo)
	{
		Session session = sessionfactory.getCurrentSession();
		Query q = session.createQuery("from MedicineVo where id="+medicinevo.getId()+"");
		List viewDiseaseList = q.list();
		return viewDiseaseList;
	}
}
