package com.iit.innovit.service.impl;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iit.innovit.dao.JobPostDao;
import com.iit.innovit.dto.JobPostDto;
import com.iit.innovit.service.JobPostService;

@Service
public class JobPostServiceImpl implements JobPostService {
	@Autowired
	private JobPostDao dao;

	@Override
	public String insertJobPost(JobPostDto jobPostDto) {
		System.out.println("servcie   " + jobPostDto);
		int responce = dao.insertJobPost(jobPostDto);
		if (responce == 0)
			return "fail";
		else
			return "success";
	}

	@Override
	public List<JobPostDto> getJobPostList() {
		List<JobPostDto> responce = dao.getJobPostList();
		return responce;
	}

	@Override
	public JobPostDto getEditJobPost(Integer id) {
		JobPostDto dto = new JobPostDto();
		List<JobPostDto> responce = dao.getEditJobPost(id);
		Iterator itr = responce.iterator();
		while (itr.hasNext()) {
			dto = (JobPostDto) itr.next();

		}
		return dto;
	}

	@Override
	public String updateJobPost(JobPostDto jobPostDto) {
		int responce = dao.updateJobPost(jobPostDto);
		if (responce == 0)
			return "fail";
		else
			return "success";
	}

	@Override
	public String deleteUser(Integer id) {
		int responce = dao.deleteUser(id);
		if (responce == 0)
			return "try againg once";
		else
			return "success";
	}

}
