package com.iit.innovit.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.iit.innovit.dto.LoginDto;

public interface LoginDao {

	List<LoginDto> getLoginInfo() throws IOException, SQLException;

	int updateAdminLogin(LoginDto loginDto) throws IOException, SQLException;

	List<LoginDto> authAdminLogin(LoginDto loginDto) throws IOException, SQLException;

}
