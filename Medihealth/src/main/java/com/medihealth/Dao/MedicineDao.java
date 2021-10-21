package com.medihealth.Dao;

import java.util.List;

import com.medihealth.Model.MedicineVo;

public interface MedicineDao {
	
	public void MedicineInsert(MedicineVo medicinevo);
	public List MedicineView(MedicineVo medicinevo);
	public List MedicineEdit(MedicineVo medicinevo);
}
