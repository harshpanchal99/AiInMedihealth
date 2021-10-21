package com.medihealth.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.medihealth.Model.DatasetVo;
import com.medihealth.Service.DatasetService;

@Controller
public class DatasetController 
{
	@Autowired
	DatasetService datasetService;
	
	@RequestMapping(value="admin/addDataset.html",method=RequestMethod.POST)
	public ModelAndView addDataset(@ModelAttribute DatasetVo datasetVo,@RequestParam(name="file") MultipartFile file,HttpSession session)
	{
		String path = session.getServletContext().getRealPath("/");
		
		String fileName = file.getOriginalFilename();
		
		System.out.println("In datasetController");
		
		String finalPath = path+"document/"; 
		
		String filepath = path+"document\\"+""+fileName;
		System.out.println(filepath);
		
		datasetVo.setFilepath(filepath);
		
		this.datasetService.fileupload(datasetVo);
		
		try {
			byte b[] = file.getBytes();
			
			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(finalPath+fileName));
			bufferedOutputStream.write(b);
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		this.datasetService.fileupload(datasetVo);
		
		return new ModelAndView("admin/addDataset","datasetVo",new DatasetVo());
	}
	
	
}
