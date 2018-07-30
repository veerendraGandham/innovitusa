package com.iit.innovit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.iit.innovit.dao.ClientDao;
import com.iit.innovit.dto.JobPostDto;
import com.iit.innovit.utill.ClientDaoConstraints;
@Repository
public class ClientDaoImpl implements ClientDao {
@Autowired
private JdbcTemplate jdbcTemplate;
	@Override
	public List<JobPostDto> getClientJobPost() {
		List<JobPostDto> responce=jdbcTemplate.query(ClientDaoConstraints.GET_CLIENT_JOBPOST, new BeanPropertyRowMapper(JobPostDto.class));
		return responce;
	}

}
