package com.iit.innovit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iit.innovit.dto.JobPostDto;
import com.iit.innovit.service.ClientServcie;

@Controller
public class ClientController {
@Autowired
private ClientServcie service;

@GetMapping("/get_client_jobPost")
public ModelAndView getClientJobPost() {
	List<JobPostDto> responce=service.getClientJobPost();
	return new ModelAndView("clientJobList","res",responce);
}
}
