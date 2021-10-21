package com.medihealth.Controller;

import java.time.LocalDate;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.ComplainVo;
import com.medihealth.Model.LoginVo;
import com.medihealth.Service.ComplainService;
import com.medihealth.Service.LoginService;
import com.medihealth.Utils.Basemethods;

@Controller
public class ComplainController 
{
	
	@Autowired ComplainService complainService;
	@Autowired LoginService loginService;
	
	@RequestMapping(value="doctor/addComplain.html",method=RequestMethod.POST)
	public ModelAndView addComplainDoctor(@ModelAttribute ComplainVo complainVo)
	{
		
		String userName = Basemethods.getUser();
		List getLoginId =  this.loginService.searchLoginID(userName);
		LoginVo loginVo = (LoginVo)getLoginId.get(0);
		
		LocalDate getDate = LocalDate.now();
		String date = getDate.toString();
		String status = "pending";
		
		System.out.println(LocalDate.now()+" COMPLAIN FILLING DATE DOCTOR");  
		
		complainVo.setLoginVo(loginVo);
		complainVo.setStatus(status);
		complainVo.setComplain_date(date);
		this.complainService.addComplain(complainVo);
		return new ModelAndView("doctor/addComplain","complainVo",new ComplainVo());
	}
	
	@RequestMapping(value="user/addComplain.html",method=RequestMethod.POST)
	public ModelAndView addComplainUser(@ModelAttribute ComplainVo complainVo)
	{
		
		String userName = Basemethods.getUser();
		List getLoginId =  this.loginService.searchLoginID(userName);
		LoginVo loginVo = (LoginVo)getLoginId.get(0);
		
		LocalDate getDate = LocalDate.now();
		String date = getDate.toString();
		String status = "pending";
		
		System.out.println(LocalDate.now()+" COMPLAIN FILLING DATE USER");  
		
		complainVo.setLoginVo(loginVo);
		complainVo.setStatus(status);
		complainVo.setComplain_date(date);
		this.complainService.addComplain(complainVo);
		return new ModelAndView("user/addComplain","complainVo",new ComplainVo());
	}
	
	@RequestMapping(value="admin/pageComplain.html",method=RequestMethod.GET)
	public ModelAndView pageComplain(@ModelAttribute ComplainVo complainVo)
	{
		List viewAllComplain = this.complainService.viewComplain(complainVo);
		return new ModelAndView("admin/viewComplain","viewAllComplain",viewAllComplain);
	}
	
	@RequestMapping(value="admin/pagereplyComplain.html",method=RequestMethod.GET)
	public ModelAndView pageReply(@RequestParam String id,@ModelAttribute ComplainVo complainVo )
	{
		Integer complainID = Integer.parseInt(id);
		
		System.out.println("complainID "+complainID);
		
		complainVo.setComplainID(complainID);
		List viewSpecific = this.complainService.viewSpcificComplain(complainVo);
		return new ModelAndView("admin/replyComplain","complainVo",viewSpecific.get(0));
	}
		
	@RequestMapping(value="admin/repliedComplain.html",method=RequestMethod.POST)
	public ModelAndView repliedComplain(@ModelAttribute ComplainVo complainVo,@RequestParam int complainID)
	{
		LocalDate getDate = LocalDate.now();
		String replyDate = getDate.toString();
		
		List viewSpecific = this.complainService.viewSpcificComplain(complainVo);
		ComplainVo comVo = (ComplainVo)viewSpecific.get(0);
		
		complainVo.setComplainID(complainID);
		complainVo.setComplain_date(comVo.getComplain_date());
		complainVo.setDescription(comVo.getDescription());
		complainVo.setSubject(comVo.getSubject());
		complainVo.setLoginVo(comVo.getLoginVo());
		complainVo.setReply_date(replyDate);
		
		System.out.println(LocalDate.now()+" REPLY FILLING DATE ADMIN");  

		this.complainService.addComplain(complainVo);
		return new ModelAndView("redirect:/admin/dashboard.html");
	}
	
	@RequestMapping(value="doctor/viewReply.html",method=RequestMethod.GET)
	public ModelAndView viewReplyDoctor(ComplainVo complainVo)
	{
		List viewDoctorComplains = this.complainService.viewAllComplains(complainVo); //Multiple Complains of Specific Doctor
		return new ModelAndView("doctor/viewReply","viewDoctorComplains",viewDoctorComplains);
	}
	
	@RequestMapping(value="user/viewReply.html",method=RequestMethod.GET)
	public ModelAndView viewReplyUser(ComplainVo complainVo)
	{
		List viewUserComplains = this.complainService.viewAllComplains(complainVo); //Multiple Complains of Specific User
		return new ModelAndView("user/viewReply","viewUserComplains",viewUserComplains);
	}
	
}
