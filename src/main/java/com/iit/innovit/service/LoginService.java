package com.iit.innovit.service;

import com.iit.innovit.dto.LoginDto;

public interface LoginService {

	LoginDto getLoginInfo();

	String updateAdminLogin(LoginDto loginDto);

	LoginDto authAdminLogin(LoginDto loginDto);

}
