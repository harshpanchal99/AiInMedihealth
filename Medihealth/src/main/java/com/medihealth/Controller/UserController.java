package com.medihealth.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.ComplainVo;
import com.medihealth.Model.FeedbackVo;
import com.medihealth.Model.UserRegisterVo;
import com.medihealth.Service.LoginService;
import com.medihealth.Service.RegisterUserService;

@Controller
public class UserController 
{
	@Autowired
	RegisterUserService registerUserService;
	
	@Autowired RegisterUserService registerService;
	@Autowired LoginService loginService;

	@RequestMapping(value="user/index.html",method=RequestMethod.GET)
	public ModelAndView dashbord()
	{
		return new ModelAndView("user/index");
	}
	
	@RequestMapping(value="user/manageAccount.html",method=RequestMethod.GET)
	public ModelAndView manageAccount(@ModelAttribute UserRegisterVo registerVO)
	{
		List getUser = this.registerUserService.getUserRegisterInfo(registerVO);
		System.out.println(getUser.get(0)+" %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		return new ModelAndView("user/manageAccount","userRegisterVo",getUser.get(0));
	}
	
	@RequestMapping(value="user/uploadXray.html",method=RequestMethod.GET)
	public ModelAndView uploadXray()
	{
		return new ModelAndView("user/uploadXray");
	}
	
	@RequestMapping(value="user/addComplain.html",method=RequestMethod.GET)
	public ModelAndView userComplain()
	{
		return new ModelAndView("user/addComplain","complainVo",new ComplainVo());
	}
	
	@RequestMapping(value="user/pageFeedback.html",method=RequestMethod.GET)
	public ModelAndView userFeedback()
	{
		return new ModelAndView("user/addFeedback","feedbackVo",new FeedbackVo());
	}
	
}
