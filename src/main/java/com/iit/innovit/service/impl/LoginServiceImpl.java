package com.iit.innovit.service.impl;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iit.innovit.dao.LoginDao;
import com.iit.innovit.dto.LoginDto;
import com.iit.innovit.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {
	@Autowired
	private LoginDao dao;

	@Override
	public LoginDto getLoginInfo() {
		LoginDto dto = new LoginDto();
		List<LoginDto> responce = dao.getLoginInfo();
		Iterator itr = responce.iterator();
		while (itr.hasNext()) {
			dto = (LoginDto) itr.next();

		}
		return dto;
	}

	@Override
	public String updateAdminLogin(LoginDto loginDto) {
		int responce=dao.updateAdminLogin(loginDto);
		if(responce==0)
		return "fail";
		else 
			return "success";
	}

	@Override
	public LoginDto authAdminLogin(LoginDto loginDto) {
		LoginDto dto=new LoginDto();
		List<LoginDto> responce=dao.authAdminLogin(loginDto);
		Iterator itr=responce.iterator();
		while (itr.hasNext()) {
			dto = (LoginDto) itr.next();
			
		}
		return dto;
	}

}
