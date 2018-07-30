package com.iit.innovit.dao;

import java.util.List;

import com.iit.innovit.dto.LoginDto;

public interface LoginDao {

	List<LoginDto> getLoginInfo();

	int updateAdminLogin(LoginDto loginDto);

	List<LoginDto> authAdminLogin(LoginDto loginDto);

}
