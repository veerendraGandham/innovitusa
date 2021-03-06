package com.iit.innovit.service.impl;

import java.io.IOException;
import java.sql.SQLException;
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
	public String insertJobPost(JobPostDto jobPostDto) throws IOException,SQLException {
		System.out.println("servcie   " + jobPostDto);
		int responce = dao.insertJobPost(jobPostDto);
		if (responce == 0)
			return "Somthing WentTo Wrong Please Try Again";
		else
			return "JobPost Added Successfully..!!";
	}

	@Override
	public List<JobPostDto> getJobPostList() throws IOException,SQLException{
		List<JobPostDto> responce = dao.getJobPostList();
		return responce;
	}

	@Override
	public JobPostDto getEditJobPost(Integer id) throws IOException,SQLException{
		JobPostDto dto = new JobPostDto();
		List<JobPostDto> responce = dao.getEditJobPost(id);
		Iterator itr = responce.iterator();
		while (itr.hasNext()) {
			dto = (JobPostDto) itr.next();

		}
		return dto;
	}

	@Override
	public String updateJobPost(JobPostDto jobPostDto) throws IOException,SQLException{
		int responce = dao.updateJobPost(jobPostDto);
		if (responce == 0)
			return "fail";
		else
			return "success";
	}

	@Override
	public String deleteUser(Integer id)throws IOException,SQLException {
		int responce = dao.deleteUser(id);
		if (responce == 0)
			return "try againg once";
		else
			return "success";
	}

}
