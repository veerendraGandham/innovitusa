package com.iit.innovit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.iit.innovit.dao.JobPostDao;
import com.iit.innovit.dto.JobPostDto;
import com.iit.innovit.utill.JobPostDaoConstraints;
@Repository
public class JobPostDaoImpl implements JobPostDao {
@Autowired
private JdbcTemplate jdbcTemplate;
	@Override
	public int insertJobPost(JobPostDto jobPostDto) {
		System.out.println("dao  "+jobPostDto);
		int responce=jdbcTemplate.update(JobPostDaoConstraints.INSERT_JOBPOST, jobPostDto.getJobTitle(), jobPostDto.getJobType(), jobPostDto.getLocation()
				, jobPostDto.getEmail(), jobPostDto.getCompanyLogo(), jobPostDto.getCompanyName(), jobPostDto.getCompanyTagLine(), jobPostDto.getWebsite()
				, jobPostDto.getVideoLink(), jobPostDto.getTwitterUserName(), jobPostDto.getJobDescription(), jobPostDto.getIsActive());
		return responce;
	}
	@Override
	public List<JobPostDto> getJobPostList() {
		List<JobPostDto> responce=jdbcTemplate.query(JobPostDaoConstraints.GET_JOBPOST_LIST, new BeanPropertyRowMapper(JobPostDto.class));
		return responce;
	}
	@Override
	public List<JobPostDto> getEditJobPost(Integer id) {
		List<JobPostDto> responce=jdbcTemplate.query(JobPostDaoConstraints.GET_EDIT_JOBPOST_LIST, new BeanPropertyRowMapper(JobPostDto.class), id);
		return responce;
	}
	@Override
	public int updateJobPost(JobPostDto jobPostDto) {
		int responce=jdbcTemplate.update(JobPostDaoConstraints.UPDATE_JOBPOST, jobPostDto.getJobTitle(), jobPostDto.getJobType(), jobPostDto.getLocation()
				, jobPostDto.getEmail(), jobPostDto.getCompanyLogo(), jobPostDto.getCompanyName(), jobPostDto.getCompanyTagLine(), jobPostDto.getWebsite()
				, jobPostDto.getVideoLink(), jobPostDto.getTwitterUserName(), jobPostDto.getJobDescription(), jobPostDto.getIsActive(),jobPostDto.getJobId());
		return responce;
	}
	@Override
	public int deleteUser(Integer id) {
	int responce=jdbcTemplate.update(JobPostDaoConstraints.DELETE_JOBPOST, id);
		return responce;
	}

}
