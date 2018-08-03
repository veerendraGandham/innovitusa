package com.iit.innovit.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.iit.innovit.dto.LoginDto;
import com.iit.innovit.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService service;

	@GetMapping("/get_admin_login")
	public ModelAndView getLoginInfo(Model model,RedirectAttributes redirect) {
		LoginDto responce=null;
		try {
			responce= service.getLoginInfo();
		String msg=(String) model.asMap().get("msg");
		model.addAttribute("msg", msg);
		return new ModelAndView("accountInfo", "res", responce);
		}
		catch (Exception e) {
			return new ModelAndView("accountInfo", "res", responce);
		}
	}

	@PostMapping("/update_adminLogin")
	public ModelAndView updateAdminLogin(@ModelAttribute LoginDto loginDto, RedirectAttributes redirect) {
		String responce = null;
		try {
			responce = service.updateAdminLogin(loginDto);
		} catch (Exception e) {
			redirect.addFlashAttribute("msg", responce);
			return new ModelAndView("redirect:/get_admin_login");
		}
		redirect.addFlashAttribute("msg", responce);
		return new ModelAndView("redirect:/get_admin_login");
	}

	@GetMapping("/adminLogin")
	public ModelAndView viewLogin() {
		return new ModelAndView("adminLogin");
	}

	@PostMapping("/auth_adminLogin")
	public ModelAndView authAdminLogin(@ModelAttribute LoginDto loginDto, RedirectAttributes redirect)
			throws IOException, SQLException {
		LoginDto dto = null;
		try {
			dto = service.authAdminLogin(loginDto);
			if (dto.getLoginName().equals(loginDto.getLoginName())
					&& dto.getPassword().equals(loginDto.getPassword())) {
				return new ModelAndView("redirect:/jobsList");
			}
		} catch (Exception e) {
			String msg = "Wrong Login Cradentials Try Again Later..";
			return new ModelAndView("adminLogin", "msg", msg);
		}
		String msg = "Wrong Login Cradentials Try Again Later..";
		return new ModelAndView("adminLogin", "msg", msg);
	}
}
