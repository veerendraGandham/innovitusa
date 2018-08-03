package com.iit.innovit.dao.impl;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.iit.innovit.dao.LoginDao;
import com.iit.innovit.dto.LoginDto;
import com.iit.innovit.utill.LoginDaoConstraints;

@Repository
public class LoginDaoImpl implements LoginDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<LoginDto> getLoginInfo() throws IOException, SQLException {
		List<LoginDto> responce = jdbcTemplate.query(LoginDaoConstraints.GET_ADMIN_LOGIN,
				new BeanPropertyRowMapper(LoginDto.class));
		return responce;
	}

	@Override
	public int updateAdminLogin(LoginDto loginDto) throws IOException, SQLException {
		int responce = jdbcTemplate.update(LoginDaoConstraints.UPDATE_ADMIN_LOGIN, loginDto.getDesignation(),
				loginDto.getFirstName(), loginDto.getLastName(), loginDto.getPhoneNo(), loginDto.getAddress(),
				loginDto.getLoginName());
		return responce;
	}

	@Override
	public List<LoginDto> authAdminLogin(LoginDto loginDto) throws IOException, SQLException {
		List<LoginDto> responce = jdbcTemplate.query(LoginDaoConstraints.AUTH_ADMIN_LOGIN,
				new BeanPropertyRowMapper(LoginDto.class), loginDto.getLoginName(), loginDto.getPassword());
		return responce;
	}

}
