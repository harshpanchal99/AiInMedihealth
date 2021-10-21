package com.medihealth.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.LoginVo;
import com.medihealth.Service.LoginService;
import com.medihealth.Utils.Basemethods;

@Controller
public class ForgotPasswordController 
{

	@Autowired LoginService loginService;
	
	
	
	@RequestMapping(value="pageforgotPassword.html",method=RequestMethod.GET)
	public ModelAndView forgotPassword()
	{
		
		return new ModelAndView("forgotPassword");
	}
	

	@RequestMapping(value="enterOTP.html",method=RequestMethod.POST)
	public ModelAndView forgotPassword(@RequestParam String emailVerify,HttpServletRequest request,	HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		System.out.println(emailVerify);
		List loginList = this.loginService.searchLoginID(emailVerify);
		if(loginList.size()!=0)
		{
			System.out.println(loginList.get(0)+" _________________________________________________ ");
			
			
			String getOTP = Basemethods.generatePassword();
			session.setAttribute("emailVerify",emailVerify);
			session.setAttribute("getOTP", getOTP);
			Basemethods.sendMail(emailVerify, getOTP, emailVerify);
			
			System.out.println(getOTP+" OTP ");
			return new ModelAndView("enterOtp");
		}
		else
		{
			return new ModelAndView("forgotPassword");
		}
	}
	
	@RequestMapping(value="OTPverify.html",method=RequestMethod.POST)
	public ModelAndView OTPverify(@RequestParam String OTPValue,HttpServletRequest request,	HttpServletResponse response)
	{
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("emailVerify");
		String getOtp = (String)session.getAttribute("getOTP");
		
		
		if(getOtp.equals(OTPValue))
		{
			System.out.println(username+" entered OTPverify method "+getOtp);
			return new ModelAndView("updatePassword");
		}
		else
		{
			return new ModelAndView("enterOtp");
		}
		
	}
	
	@RequestMapping(value="updatedPasswordVerify.html",method=RequestMethod.POST)
	public ModelAndView updatePassword(@RequestParam String ConfirmPassword,HttpServletRequest request)
	{
		LoginVo loginVo1 = new LoginVo();
		
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("emailVerify");
		
		List loginId = this.loginService.searchLoginID(userName);
		
		LoginVo loginVO = (LoginVo)loginId.get(0);
		
		loginVo1.setLoginId(loginVO.getLoginId());
		loginVo1.setEnabled("1");
		loginVo1.setRole(loginVO.getRole());
		loginVo1.setStatus(true);
		loginVo1.setUsername(loginVO.getUsername());
		loginVo1.setPassword(ConfirmPassword);

		
		this.loginService.insertLogin(loginVo1);
		System.out.println(ConfirmPassword+" In updatepassword");
		return new ModelAndView("login");
	}
	
	
	
}
