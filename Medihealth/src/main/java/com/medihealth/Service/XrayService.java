package com.medihealth.Service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medihealth.Dao.XrayDao;
import com.medihealth.Model.XrayVo;

@Service
public class XrayService 
{
	@Autowired XrayDao xrayDao;
	
	@Transactional
	public void uploadXray(XrayVo xrayVo)
	{
		this.xrayDao.uploadXray(xrayVo);
	}
	
}
