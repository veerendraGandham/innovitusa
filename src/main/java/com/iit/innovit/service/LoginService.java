package com.iit.innovit.service;

import java.io.IOException;
import java.sql.SQLException;

import com.iit.innovit.dto.LoginDto;

public interface LoginService {

	LoginDto getLoginInfo() throws IOException, SQLException;

	String updateAdminLogin(LoginDto loginDto) throws IOException, SQLException;

	LoginDto authAdminLogin(LoginDto loginDto) throws IOException, SQLException;

}
