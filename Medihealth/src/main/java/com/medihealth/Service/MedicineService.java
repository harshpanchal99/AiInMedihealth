package com.medihealth.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.medihealth.Dao.MedicineDao;
import com.medihealth.Model.MedicineVo;

@Service
public class MedicineService 
{
	@Autowired
	MedicineDao medicinedao;
	
	@Transactional
	public void medicineInsert(MedicineVo medicineVo)
	{
		this.medicinedao.MedicineInsert(medicineVo);
	}
	
	@Transactional
	public List medicineView(MedicineVo medicineVo)
	{
		List medicineList = this.medicinedao.MedicineView(medicineVo);
		return medicineList;
	}
	
	@Transactional
	public List medicineEdit(MedicineVo medicineVo)
	{
		List medicineList = this.medicinedao.MedicineEdit(medicineVo);
		return medicineList;
	}
}

