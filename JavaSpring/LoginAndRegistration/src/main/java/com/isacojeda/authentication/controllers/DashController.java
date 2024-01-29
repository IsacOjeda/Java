package com.isacojeda.authentication.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class DashController {
	
	@GetMapping("/welcome")
	public String welcomeDashboard(HttpSession session) {
		if(session.getAttribute("userId")==null) {
			return "redirect:/logout";
		}
		return "dash.jsp";
	}

}
