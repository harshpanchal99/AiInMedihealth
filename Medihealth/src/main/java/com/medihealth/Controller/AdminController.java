package com.medihealth.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.ComplainVo;
import com.medihealth.Model.DatasetVo;
import com.medihealth.Model.DiseaseVo;
import com.medihealth.Model.MedicineVo;
import com.medihealth.Model.SymptomsVo;
import com.medihealth.Service.AdminService;
import com.medihealth.Service.DiseaseService;


@Controller
public class AdminController {
	
	@Autowired
	DiseaseService diseaseservice;
	
	@Autowired
	AdminService adminService;
	
	@RequestMapping(value="admin/dashboard.html",method=RequestMethod.GET)
	public ModelAndView forward()
	{
		return new ModelAndView("admin/index");
	}
	
	@RequestMapping(value="admin/pageDisease.html",method=RequestMethod.GET)
	public ModelAndView addDisease()
	{
		return new ModelAndView("admin/addDisease","diseasevo",new DiseaseVo());
	}
	
	@RequestMapping(value="admin/pageMedicine.html",method=RequestMethod.GET)
	public ModelAndView addMedicine(@ModelAttribute DiseaseVo diseasevo)
	{
		List diseaseList = this.diseaseservice.DiseaseView(diseasevo);
		return new ModelAndView("admin/addMedicine","medicineVo",new MedicineVo()).addObject("diseaseList", diseaseList);
	}
	
	@RequestMapping(value="admin/pageSymptoms.html",method=RequestMethod.GET)
	public ModelAndView addSymptoms(@ModelAttribute DiseaseVo diseasevo)
	{
		List diseaseList = this.diseaseservice.DiseaseView(diseasevo);
		return new ModelAndView("admin/addSymptoms","symptomsVo",new SymptomsVo()).addObject("diseaseList", diseaseList);
	}

	@RequestMapping(value="admin/pageDataset.html",method=RequestMethod.GET)
	public ModelAndView addDataset(@ModelAttribute DatasetVo datasetVo)
	{
		return new ModelAndView("admin/addDataset","datasetVo",new DatasetVo());
	}
	
	@RequestMapping(value="admin/pageDoctor.html",method=RequestMethod.GET)
	public ModelAndView pageDoctor()
	{
		List viewAllDoctor = this.adminService.viewAllDoctor();
		return new ModelAndView("admin/viewDoctor","viewAllDoctor",viewAllDoctor);
	}
	
	@RequestMapping(value="admin/pageUser.html",method=RequestMethod.GET)
	public ModelAndView pageUser()
	{
		List viewAllUser = this.adminService.viewAllUser();
		System.out.println(viewAllUser.size()+" SIZE ");
		return new ModelAndView("admin/viewUser","viewAllUser",viewAllUser);
	}
	
	

}
