package com.medihealth.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.LoginVo;
import com.medihealth.Model.UserRegisterVo;
import com.medihealth.Service.LoginService;
import com.medihealth.Service.RegisterUserService;

@Controller
public class UserInformationController {
	

	@Autowired RegisterUserService registerUserService;
	
	@Autowired LoginService loginService;
	
	@RequestMapping(value="user/userUpdate.html",method=RequestMethod.POST)
	public ModelAndView userUpdate(@ModelAttribute UserRegisterVo userRegisterVo,LoginVo loginVO)
	{
		
		List getUser = this.registerUserService.getUserRegisterInfo(userRegisterVo); //Object in parameter has no use.
		
		UserRegisterVo userVo1 = (UserRegisterVo)getUser.get(0);
		
		LoginVo loginVo1 = userVo1.getLoginVo();
		int loginID = loginVo1.getLoginId();
		
		//System.out.println(userRegisterVo.getLoginVo().getUsername()+" USERNAME OF USER From UserController for Updation"+loginID);
		
		loginVO.setLoginId(loginID);
		loginVO.setUsername(userRegisterVo.getLoginVo().getUsername());
		loginVO.setPassword(userRegisterVo.getLoginVo().getPassword());
		loginVO.setEnabled("1");
		loginVO.setRole("ROLE_USER");
		loginVO.setStatus(true);
		this.loginService.insertLogin(loginVO);
		
		userRegisterVo.setLoginVo(loginVO);
		
		this.registerUserService.insertRegister(userRegisterVo);
		
		System.out.println("USER DETAILS UPDATION SUCCESSFULL");
		
		return new ModelAndView("redirect:/login.html");
	}

}
