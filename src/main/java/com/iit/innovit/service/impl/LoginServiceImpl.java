package com.iit.innovit.service.impl;

import java.io.IOException;
import java.sql.SQLException;
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
	public LoginDto getLoginInfo() throws IOException, SQLException {
		LoginDto dto = new LoginDto();
		List<LoginDto> responce = dao.getLoginInfo();
		Iterator itr = responce.iterator();
		while (itr.hasNext()) {
			dto = (LoginDto) itr.next();

		}
		return dto;
	}

	@Override
	public String updateAdminLogin(LoginDto loginDto) throws IOException, SQLException {
		int responce = dao.updateAdminLogin(loginDto);
		if (responce == 0)
			return "Somthing WentTo Wrong Please Try Again Later..";
		else
			return "Your Updation Successfully Done !!";
	}

	@Override
	public LoginDto authAdminLogin(LoginDto loginDto) throws IOException, SQLException {
		LoginDto dto = new LoginDto();
		List<LoginDto> responce = dao.authAdminLogin(loginDto);
		Iterator itr = responce.iterator();
		while (itr.hasNext()) {
			dto = (LoginDto) itr.next();

		}
		return dto;
	}

}
