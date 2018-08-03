package com.iit.innovit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.iit.innovit.dto.JobPostDto;
import com.iit.innovit.service.JobPostService;

@Controller
public class JobPostController {
	@Autowired
	private JobPostService service;

	@PostMapping("/insert_jobPost")
	public ModelAndView insertJobPost(@ModelAttribute JobPostDto jobPostDto, RedirectAttributes redirect) {
		String responce = null;
		try {
			responce = service.insertJobPost(jobPostDto);
		} catch (Exception e) {
			redirect.addFlashAttribute("errorMsg", responce);
			return new ModelAndView("redirect:/jobsList");
		}
		redirect.addFlashAttribute("errorMsg", responce);
		return new ModelAndView("redirect:/jobsList");
	}

	@GetMapping("/jobsList")
	public ModelAndView getJobPostList() {
		List<JobPostDto> responce=null;
		try {
		 responce = service.getJobPostList();
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return new ModelAndView("adminAddJobList", "res", responce);
	}

	@GetMapping("/get_edit_jobPost")
	public ModelAndView getEditJobPost(@RequestParam("jobId") Integer id) {
		JobPostDto responce=null;
		try {
		 responce = service.getEditJobPost(id);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return new ModelAndView("adminEditJobPost", "res", responce);
	}

	@PostMapping("/update_jobPost")
	public ModelAndView updateJobPost(@ModelAttribute JobPostDto jobPostDto, RedirectAttributes redirect) {
		String responce=null;
		try {
			 responce = service.updateJobPost(jobPostDto);
		}catch (Exception e) {
			// TODO: handle exception
		}
		
		return new ModelAndView("redirect:/jobsList");
	}

	@GetMapping("/delete_jobPost")
	public ModelAndView deleteUser(@RequestParam("jobId") Integer id, RedirectAttributes redirect) {
		String responce=null;
		try {
		responce= service.deleteUser(id);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return new ModelAndView("redirect:/jobsList");
	}
}
