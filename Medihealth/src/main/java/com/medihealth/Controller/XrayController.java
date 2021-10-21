package com.medihealth.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.LoginVo;
import com.medihealth.Model.XrayVo;
import com.medihealth.Service.LoginService;
import com.medihealth.Service.XrayService;
import com.medihealth.Utils.Basemethods;

@Controller
public class XrayController 
{
	@Autowired XrayService xrayService;
	@Autowired LoginService loginService;
	
	@RequestMapping(value="user/uploadXray.html",method=RequestMethod.POST)
	public ModelAndView addDataset(HttpServletRequest request,@ModelAttribute XrayVo xrayVo,@RequestParam(name="file") MultipartFile file,HttpSession session,@RequestParam String xrayFileName)
	{
		String userName = Basemethods.getUser();
		List getLoginId =  this.loginService.searchLoginID(userName);
		LoginVo loginVo = (LoginVo)getLoginId.get(0);
		
		String path = session.getServletContext().getRealPath("/");
		
		String fileName = file.getOriginalFilename();
		String xFileName = fileName;
		
		System.out.println("In Xray Controller FILENAME: "+xrayFileName);
		
		String finalPath = path+"UserXray/"; 
		
		String filepath = path+"UserXray\\"+""+fileName;
		System.out.println(filepath);
		
		String sendPath = "/UserXray/"+fileName;
	
		xrayVo.setXrayFilePath(filepath);
		xrayVo.setXrayFileName(xFileName);
		xrayVo.setLoginVo(loginVo);
		
		this.xrayService.uploadXray(xrayVo);
		
		try {
			byte b[] = file.getBytes();
			
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(finalPath+fileName));
			bufferedOutputStream.write(b);
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		this.xrayService.uploadXray(xrayVo);
		 
		/*return new ModelAndView("user/uploadXray","datasetVo",new DatasetVo());*/
		return new ModelAndView("user/viewXray","path",sendPath).addObject("fileName",xFileName );
	}
	
}
