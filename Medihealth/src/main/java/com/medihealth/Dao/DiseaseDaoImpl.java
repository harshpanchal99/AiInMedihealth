package com.medihealth.Dao;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.medihealth.Model.DiseaseVo;

@Repository
public class DiseaseDaoImpl implements DiseaseDao
{
		@Autowired
		SessionFactory sessionfactory;
		
		public void setSessionfactory(SessionFactory sessionfactory) {
			this.sessionfactory = sessionfactory;
		}

		public void DiseaseInsert(DiseaseVo diseasevo) 
		{
			Session session = sessionfactory.getCurrentSession();
			session.saveOrUpdate(diseasevo);
		}
		
		public List DiseaseView(DiseaseVo diseasevo)
		{
			Session session = sessionfactory.getCurrentSession();
			Query q = session.createQuery("from DiseaseVo where status="+true+"");
			List viewDiseaseList = q.list();
			return viewDiseaseList;
		}
		
		public List DiseaseEdit(DiseaseVo diseasevo)
		{
			Session session = sessionfactory.getCurrentSession();
			Query q = session.createQuery("from DiseaseVo where id="+diseasevo.getId()+"");
			List viewDiseaseList = q.list();
			return viewDiseaseList;
		}

}
