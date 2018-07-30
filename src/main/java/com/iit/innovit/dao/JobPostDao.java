package com.iit.innovit.dao;

import java.util.List;

import com.iit.innovit.dto.JobPostDto;

public interface JobPostDao {

	int insertJobPost(JobPostDto jobPostDto);

	List<JobPostDto> getJobPostList();

	List<JobPostDto> getEditJobPost(Integer id);

	int updateJobPost(JobPostDto jobPostDto);

	int deleteUser(Integer id);

}
