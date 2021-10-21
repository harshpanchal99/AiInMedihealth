package com.medihealth.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.ComplainVo;
import com.medihealth.Model.DoctorRegisterVo;
import com.medihealth.Model.FeedbackVo;
import com.medihealth.Service.RegisterDoctorService;

@Controller
public class DoctorController {

	@Autowired
	RegisterDoctorService doctorInfoService;
	
	@RequestMapping(value="doctor/index.html",method=RequestMethod.GET)
	public ModelAndView dashbord()
	{
		return new ModelAndView("doctor/index");
	}
	
	@RequestMapping(value="doctor/addInfo.html",method=RequestMethod.GET)
	public ModelAndView addInformation()
	{
		return new ModelAndView("doctor/addInformation","doctorRegisterVo",new DoctorRegisterVo());
	}
	
	@RequestMapping(value="doctor/manageAccount.html",method=RequestMethod.GET)
	public ModelAndView manageAccount(@ModelAttribute DoctorRegisterVo doctorRegisterVo )
	{
		List getDoctorInfo = this.doctorInfoService.getDoctorInformation(doctorRegisterVo);
		return new ModelAndView("doctor/manageAccount","doctorRegisterVo", getDoctorInfo.get(0));
	}
	
	
	@RequestMapping(value="doctor/pageFeedback.html",method=RequestMethod.GET)
	public ModelAndView feedback()
	{
		return new ModelAndView("doctor/addFeedback","feedbackVo",new FeedbackVo());
	}
	
	@RequestMapping(value="doctor/pageComplain.html",method=RequestMethod.GET)
	public ModelAndView complain()
	{
		return new ModelAndView("doctor/addComplain","complainVo",new ComplainVo());
	}
	
	
}
