package com.medihealth.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.DoctorRegisterVo;
import com.medihealth.Model.LoginVo;
import com.medihealth.Model.UserRegisterVo;
import com.medihealth.Service.LoginService;
import com.medihealth.Service.RegisterDoctorService;


@Controller
public class LoginController {

	@Autowired
	LoginService loginService;

	@Autowired RegisterDoctorService doctorInformationService;
	
	@RequestMapping(value = "login.html", method = RequestMethod.GET)
	public ModelAndView loadLogin() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView loadIndex() {

		return new ModelAndView("index");
	}	
	
	@RequestMapping(value = "/admin/index", method = RequestMethod.GET)
	public ModelAndView adminIndex(LoginVo loginVO ) {

		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		
		return new ModelAndView("admin/index");
	}
	
	@RequestMapping(value = "/user/index", method = RequestMethod.GET)
	public ModelAndView userIndex() {
		return new ModelAndView("user/index");
	}
	
	@RequestMapping(value = "/doctor/index", method = RequestMethod.GET)
	public ModelAndView doctorIndex(@ModelAttribute DoctorRegisterVo doctorRegisterVo) 
	{
		List doctorInformation = this.doctorInformationService.getDoctorInformation(doctorRegisterVo);
		DoctorRegisterVo getdocRegisterVo = (DoctorRegisterVo)doctorInformation.get(0);
		String name = getdocRegisterVo.getFirstname();
		System.out.println(name+" In Login Controller-doctorIndex method");
		return new ModelAndView("doctor/index").addObject("name", name);
	}
	
	@RequestMapping(value = "/logout", method = {RequestMethod.POST, RequestMethod.GET})	
	public String viewUserDetails(ModelMap model,HttpServletResponse response,HttpServletRequest request) {

		  Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth != null) {
	            new SecurityContextLogoutHandler().logout(request, response, auth);
	            request.getSession().invalidate();
	            request.getSession().setAttribute("tempStatus", "success");
	            request.getSession().setAttribute("statusText", "Logout Successfully!");
	        }
	        return "login";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView load() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView load403() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/error", method = RequestMethod.GET)
	public ModelAndView error() {

		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "doctorRegister.html", method = RequestMethod.GET)
	public ModelAndView dotorRegister() {

		return new ModelAndView("doctor/register","doctorRegisterVo",new DoctorRegisterVo());
	}
	
	@RequestMapping(value = "userRegister.html", method = RequestMethod.GET)
	public ModelAndView userRegister() {

		return new ModelAndView("user/register","userRegisterVo",new UserRegisterVo());
	}
	
}