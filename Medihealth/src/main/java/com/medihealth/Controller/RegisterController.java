package com.medihealth.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.DoctorRegisterVo;
import com.medihealth.Model.LoginVo;
import com.medihealth.Model.UserRegisterVo;
import com.medihealth.Service.LoginService;
import com.medihealth.Service.RegisterDoctorService;
import com.medihealth.Service.RegisterUserService;


@Controller
public class RegisterController {

	@Autowired RegisterUserService registerService;
	@Autowired LoginService loginService;
	@Autowired RegisterDoctorService registerDoctorService;
	
	@RequestMapping(value = "userInsert.html", method = RequestMethod.POST)
	public ModelAndView goToHomePage(@ModelAttribute UserRegisterVo registerVO,LoginVo loginVO) {

		System.out.println(registerVO.getLoginVo().getUsername()+" USERNAME OF USER");
		
		loginVO.setUsername(registerVO.getLoginVo().getUsername());
		loginVO.setPassword(registerVO.getLoginVo().getPassword());
		loginVO.setEnabled("1");
		loginVO.setRole("ROLE_USER");
		loginVO.setStatus(true);
		this.loginService.insertLogin(loginVO);
		
		registerVO.setLoginVo(loginVO);
		this.registerService.insertRegister(registerVO);
		
		System.out.println("user Registration Successfull");
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="doctorInsert.html",method=RequestMethod.POST)
	public ModelAndView goToLoginPage(@ModelAttribute DoctorRegisterVo doctorRegisterVo ,LoginVo loginVO)
	{
		loginVO.setUsername(doctorRegisterVo.getLoginVo().getUsername());
		loginVO.setPassword(doctorRegisterVo.getLoginVo().getPassword());
		loginVO.setEnabled("1");
		loginVO.setRole("ROLE_DOCTOR");
		loginVO.setStatus(true);
		this.loginService.insertLogin(loginVO);
		
		doctorRegisterVo.setLoginVo(loginVO);
		this.registerDoctorService.doctorInsert(doctorRegisterVo);
		
		System.out.println("doctor Registration Successfull");
		return new ModelAndView("login");
	}
	
	@RequestMapping(value="verify.html",method=RequestMethod.GET)
	public ModelAndView verifyemail(@RequestParam String userName,LoginVo loginVo)
	{
		String message = new String();
		List usernameList = this.loginService.searchLoginID(userName);
		if(usernameList.size()!=0)
		{
			message="Username exists ! Please choose another one..";
		}	
/*		else
		{
			message="You are new user";
		}*/
		System.out.println("MESSGAGE :"+message+"____________________________________________________");
		return new ModelAndView("doctor/verify","message",message);
	}
}
