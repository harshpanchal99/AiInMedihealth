package com.medihealth.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.DiseaseVo;
import com.medihealth.Model.MedicineVo;
import com.medihealth.Service.DiseaseService;
import com.medihealth.Service.MedicineService;

@Controller
public class MedicineController 
{
	@Autowired
	MedicineService medicineService;
	
	@Autowired
	DiseaseService diseaseservice;
	
	@RequestMapping(value="admin/addMedicine.html",method=RequestMethod.POST)
	public ModelAndView addMedicine(@ModelAttribute MedicineVo medicineVo,@ModelAttribute DiseaseVo diseasevo)
	{
		System.out.println("In controller addMedicine");
		List diseaseList = this.diseaseservice.DiseaseView(diseasevo);
		
		this.medicineService.medicineInsert(medicineVo);
		return new ModelAndView("admin/addMedicine","medicineVo",new MedicineVo()).addObject("diseaseList", diseaseList);
	}
	
	@RequestMapping(value="admin/viewMedicine.html",method=RequestMethod.GET)
	public ModelAndView viewMedicine(@ModelAttribute MedicineVo medicineVo)
	{
		List medicineList = this.medicineService.medicineView(medicineVo);
		return new ModelAndView("admin/viewMedicine","medicineList",medicineList);
	}
	
	@RequestMapping(value="admin/deleteMedicine.html",method=RequestMethod.GET)
	public ModelAndView deleteDisease(@ModelAttribute MedicineVo medicineVo,@RequestParam int id)
	{	
		Boolean status = false;
		medicineVo.setId(id);
		
		List medicinevoList = this.medicineService.medicineEdit(medicineVo); 
		medicineVo = (MedicineVo)medicinevoList.get(0); 
		
		medicineVo.setStatus(status);
		this.medicineService.medicineInsert(medicineVo);
		return new ModelAndView("redirect:/viewMedicine.html");
	}
	
	@RequestMapping(value="admin/editMedicine.html",method=RequestMethod.GET)
	public ModelAndView editDisease(@ModelAttribute MedicineVo medicineVo,@RequestParam int id,@ModelAttribute DiseaseVo diseasevo)
	{
		List viewMedicine = this.medicineService.medicineEdit(medicineVo);
		
		List diseaseList = this.diseaseservice.DiseaseView(diseasevo);
		return new ModelAndView("admin/addMedicine","medicineVo",viewMedicine.get(0)).addObject("diseaseList", diseaseList);
	}
	
}
