package com.iit.innovit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iit.innovit.dao.ClientDao;
import com.iit.innovit.dto.JobPostDto;
import com.iit.innovit.service.ClientServcie;
@Service
public class ClientServcieImpl implements ClientServcie {
@Autowired
private ClientDao dao;
	@Override
	public List<JobPostDto> getClientJobPost() {
		List<JobPostDto> responce=dao.getClientJobPost();
		return responce;
	}

}
