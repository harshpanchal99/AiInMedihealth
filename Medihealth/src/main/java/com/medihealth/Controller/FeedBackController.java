package com.medihealth.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.FeedbackVo;
import com.medihealth.Model.LoginVo;
import com.medihealth.Service.FeedbackService;
import com.medihealth.Service.LoginService;
import com.medihealth.Utils.Basemethods;

@Controller
public class FeedBackController 
{
	
	@Autowired FeedbackService feedbackService;
	@Autowired LoginService loginService;
	
	@RequestMapping(value="user/addFeedback.html",method = RequestMethod.POST)
	public ModelAndView addFeedback(FeedbackVo feedbackVo)
	{
		/*String rating = "5";*/
		
		String userName = Basemethods.getUser();
		List getLoginId =  this.loginService.searchLoginID(userName);
		LoginVo loginVo = (LoginVo)getLoginId.get(0);
		
		System.out.println("IN FEEDBACK CONTROLLER METHOD OF ADD");
		
		feedbackVo.setLoginVO(loginVo);
		/*feedbackVo.setRating(rating);*/
		this.feedbackService.addFeedback(feedbackVo);
		return new ModelAndView("user/addFeedback","feedbackVo",new FeedbackVo());
	}
	
	@RequestMapping(value="doctor/addFeedback.html",method = RequestMethod.POST)
	public ModelAndView addFeedbackDoctor(FeedbackVo feedbackVo)
	{
		String rating = "5";
		
		String userName = Basemethods.getUser();
		List getLoginId =  this.loginService.searchLoginID(userName);
		LoginVo loginVo = (LoginVo)getLoginId.get(0);
		
		System.out.println("IN FEEDBACK CONTROLLER METHOD OF ADD FOR DOCTOR");
		
		feedbackVo.setLoginVO(loginVo);
		feedbackVo.setRating(rating);
		this.feedbackService.addFeedback(feedbackVo);
		return new ModelAndView("doctor/addFeedback","feedbackVo",new FeedbackVo());
	}
	
	@RequestMapping(value="admin/viewFeedback.html",method=RequestMethod.GET)
	public ModelAndView viewFeedback(FeedbackVo feedbackVo)
	{
		List ls = this.feedbackService.viewFeedback(feedbackVo);
		return new ModelAndView("admin/viewFeedback","viewAllfeedback",ls);
	}
	
}
