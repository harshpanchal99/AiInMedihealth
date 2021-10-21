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
import com.medihealth.Model.SymptomsVo;
import com.medihealth.Service.DiseaseService;
import com.medihealth.Service.SymptomsService;

@Controller
public class SymptomsController 
{
	@Autowired
	DiseaseService diseaseservice;
	
	@Autowired
	SymptomsService symptomsservice;

	@RequestMapping(value="admin/addSymptoms.html",method=RequestMethod.POST)
	public ModelAndView addSymptoms(@ModelAttribute SymptomsVo symptomsVo,@ModelAttribute DiseaseVo diseaseVo)
	{
		System.out.println("In addSymptoms");
		List diseaseList = this.diseaseservice.DiseaseView(diseaseVo);
		this.symptomsservice.SymptomsInsert(symptomsVo);
		return new ModelAndView("admin/addSymptoms","symptomsVo",new SymptomsVo()).addObject("diseaseList", diseaseList);
	}
	
	@RequestMapping(value="admin/viewSymptoms.html",method=RequestMethod.GET)
	public ModelAndView viewSymptoms(@ModelAttribute SymptomsVo symptomsVo)
	{
		List symptomsList = this.symptomsservice.SymptomsView(symptomsVo);
		return new ModelAndView("admin/viewSymptoms","symptomsList", symptomsList);
	}
	
	@RequestMapping(value="admin/deleteSymptoms.html",method=RequestMethod.GET)
	public ModelAndView deleteSymptoms(@ModelAttribute SymptomsVo symptomsVo,@RequestParam int id)
	{
		Boolean status = false;
		symptomsVo.setId(id);
		
		List symptomsList = this.symptomsservice.SymptomsEdit(symptomsVo);
		symptomsVo = (SymptomsVo)symptomsList.get(0);
		
		symptomsVo.setStatus(status);
		this.symptomsservice.SymptomsInsert(symptomsVo);
		return new ModelAndView("redirect:/viewSymptoms.html");
	}
	
	@RequestMapping(value="admin/editSymptoms.html",method=RequestMethod.GET)
	public ModelAndView editSymptoms(@ModelAttribute SymptomsVo symptomsVo,@ModelAttribute DiseaseVo diseasevo)
	{
		List diseaseList = this.diseaseservice.DiseaseView(diseasevo);
		List viewSymptoms = this.symptomsservice.SymptomsEdit(symptomsVo);
		return new ModelAndView("admin/addSymptoms","symptomsVo",viewSymptoms.get(0)).addObject("diseaseList", diseaseList);	
	}
	
}
