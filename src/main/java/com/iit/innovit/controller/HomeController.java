package com.iit.innovit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	@GetMapping("/")
	public String home() {
		return "index";
	}

	@GetMapping("/home")
	public String index() {
		return "index";
	}
	@GetMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
	}
	@GetMapping("/development")
	public String development() {
		return "development";
	}
	@GetMapping("/consulting")
	public String consulting() {
		return "consulting";
	}
	@GetMapping("/skill")
	public String skill() {
		return "skill";
	}
	@GetMapping("/digital")
	public String digital() {
		return "digital";
	}
	@GetMapping("/products")
	public String products() {
		return "products";
	}
	@GetMapping("/automobile")
	public String automobile() {
		return "automobile";
	}
	@GetMapping("/govt")
	public String govt() {
		return "govt";
	}
	@GetMapping("/manufacturing")
	public String manufacturing() {
		return "manufacturing";
	}
	@GetMapping("/health")
	public String health() {
		return "health";
	}
	@GetMapping("/jobs")
	public String jobs() {
		return "jobs";
	}
	@GetMapping("/lca")
	public String lca() {
		return "lca";
	}
	@GetMapping("/forms")
	public String forms() {
		return "forms";
	}
	@GetMapping("/benefits")
	public String benefits() {
		return "benefits";
	}
	@GetMapping("/contact")
	public String contact() {
		return "contact";
	}
	@GetMapping("/addJobs")
	public String addJobs() {
		return "addJobs";
	}
	
	
}
