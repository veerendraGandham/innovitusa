package com.iit.innovit.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.iit.innovit.dto.JobPostDto;

public interface JobPostService {

	String insertJobPost(JobPostDto jobPostDto)throws IOException,SQLException;

	List<JobPostDto> getJobPostList()throws IOException,SQLException;

	JobPostDto getEditJobPost(Integer id)throws IOException,SQLException;

	String updateJobPost(JobPostDto jobPostDto)throws IOException,SQLException;

	String deleteUser(Integer id)throws IOException,SQLException;

}
