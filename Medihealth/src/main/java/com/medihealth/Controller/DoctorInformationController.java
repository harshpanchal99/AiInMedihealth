package com.medihealth.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.DoctorRegisterVo;
import com.medihealth.Model.LoginVo;
import com.medihealth.Service.LoginService;
import com.medihealth.Service.RegisterDoctorService;

@Controller
public class DoctorInformationController 
{
	
	@Autowired RegisterDoctorService doctorInformationService;
	@Autowired LoginService loginService;
	
	
	@RequestMapping(value="doctor/addInformation.html",method=RequestMethod.POST)
	public ModelAndView addInformation(@ModelAttribute DoctorRegisterVo doctorRegisterVo)
	{
		List doctorInformation = this.doctorInformationService.getDoctorInformation(doctorRegisterVo);
		
		DoctorRegisterVo getdocRegisterVo = (DoctorRegisterVo)doctorInformation.get(0); 	
		
		System.out.println(getdocRegisterVo.getDoctorId()+" "+getdocRegisterVo.getFirstname()+" "+getdocRegisterVo.getGender());
		
		doctorRegisterVo.setDoctorId(getdocRegisterVo.getDoctorId());
		doctorRegisterVo.setFirstname(getdocRegisterVo.getFirstname());
		doctorRegisterVo.setLastname(getdocRegisterVo.getLastname());
		doctorRegisterVo.setGender(getdocRegisterVo.getGender());
		doctorRegisterVo.setPhone_no(getdocRegisterVo.getPhone_no());
		doctorRegisterVo.setLoginVo(getdocRegisterVo.getLoginVo());
		
		this.doctorInformationService.doctorInsert(doctorRegisterVo);
		
		return new ModelAndView("doctor/addInformation","doctorRegisterVo",new DoctorRegisterVo());
	}
	
	@RequestMapping(value="doctor/doctorUpdate.html",method=RequestMethod.POST)
	public ModelAndView updateInformation(@ModelAttribute DoctorRegisterVo doctorRegisterVo,LoginVo loginVO)
	{
		List getDoctor = this.doctorInformationService.getDoctorInformation(doctorRegisterVo); //Object in parameter has no use.
		DoctorRegisterVo docVo1 = (DoctorRegisterVo)getDoctor.get(0);
		LoginVo logVo1 = docVo1.getLoginVo();
		int loginID = logVo1.getLoginId();
		
		loginVO.setLoginId(loginID);
		loginVO.setUsername(doctorRegisterVo.getLoginVo().getUsername());
		loginVO.setPassword(doctorRegisterVo.getLoginVo().getPassword());
		loginVO.setEnabled("1");
		loginVO.setRole("ROLE_DOCTOR");
		loginVO.setStatus(true);
		this.loginService.insertLogin(loginVO);
		
		doctorRegisterVo.setLoginVo(loginVO);
		this.doctorInformationService.doctorInsert(doctorRegisterVo);
 		
		System.out.println("DOCTOR DETAILS UPDATION SUCCESSFULL");
		
		return new ModelAndView("redirect:/login.html");
		
	}
}
