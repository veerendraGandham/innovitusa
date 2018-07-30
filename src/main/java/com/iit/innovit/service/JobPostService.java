package com.iit.innovit.service;

import java.util.List;

import com.iit.innovit.dto.JobPostDto;

public interface JobPostService {

	String insertJobPost(JobPostDto jobPostDto);

	List<JobPostDto> getJobPostList();

	JobPostDto getEditJobPost(Integer id);

	String updateJobPost(JobPostDto jobPostDto);

	String deleteUser(Integer id);

}
