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
import com.medihealth.Service.DiseaseService;

@Controller
public class DiseaseController 
{
	@Autowired
	DiseaseService diseaseservice; 
	
	@RequestMapping(value="admin/addDisease.html",method=RequestMethod.POST)
	public ModelAndView addDisease(@ModelAttribute DiseaseVo diseasevo)
	{
		this.diseaseservice.DiseaseInsert(diseasevo);
		System.out.println("INSERTED");
		return new ModelAndView("admin/addDisease","diseasevo",new DiseaseVo());
	}
	
	@RequestMapping(value="admin/viewDisease.html",method=RequestMethod.GET)
	public ModelAndView viewDisease(@ModelAttribute DiseaseVo diseasevo)
	{
		List viewDiseaseList = this.diseaseservice.DiseaseView(diseasevo);
		return new ModelAndView("admin/viewDisease","viewDiseaseList",viewDiseaseList);
	}
	
	@RequestMapping(value="admin/deleteDisease.html",method=RequestMethod.GET)
	public ModelAndView deleteDisease(@ModelAttribute DiseaseVo diseasevo,@RequestParam int id)
	{	
		Boolean status = false;
		diseasevo.setId(id);
		
		List diseasevoList = this.diseaseservice.DiseaseEdit(diseasevo); 
		diseasevo = (DiseaseVo)diseasevoList.get(0); 
		
		diseasevo.setStatus(status);
		this.diseaseservice.DiseaseInsert(diseasevo);
		return new ModelAndView("redirect:/viewDisease.html");
	}
	
	@RequestMapping(value="admin/editDisease.html",method=RequestMethod.GET)
	public ModelAndView editDisease(@ModelAttribute DiseaseVo diseasevo,@RequestParam int id)
	{
		List viewDisease = this.diseaseservice.DiseaseEdit(diseasevo);
		return new ModelAndView("admin/addDisease","diseasevo",viewDisease.get(0));
	}
}
