package com.iit.innovit.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.iit.innovit.dto.JobPostDto;

public interface JobPostDao {

	int insertJobPost(JobPostDto jobPostDto) throws IOException, SQLException;

	List<JobPostDto> getJobPostList() throws IOException, SQLException;

	List<JobPostDto> getEditJobPost(Integer id) throws IOException, SQLException;

	int updateJobPost(JobPostDto jobPostDto)throws IOException,SQLException;

	int deleteUser(Integer id)throws IOException,SQLException;

}
