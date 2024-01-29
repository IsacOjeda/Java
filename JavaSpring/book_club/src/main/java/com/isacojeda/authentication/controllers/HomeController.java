package com.isacojeda.authentication.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.isacojeda.authentication.models.LoginUser;
import com.isacojeda.authentication.models.User;
import com.isacojeda.authentication.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class HomeController {
	
	private final UserService userService;
	
	public HomeController(UserService userService) {
		super();
		this.userService = userService;
	}

	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "index.jsp";

	}
	
	@PostMapping("/register")
	public String register(@Valid @ModelAttribute("newUser")User newUser, BindingResult result, Model model, HttpSession session) {
		User registeredUser = userService.register(newUser,result);
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "index.jsp";
		}else {
			session.setAttribute("userId", registeredUser.getId());
			session.setAttribute("userName", registeredUser.getUserName());

			return "redirect:/welcome";
		}
	}
	

	@PostMapping("/login")
	public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
		//get user by calling login in service and make use of the binding result
		User loggedUser = userService.login(newLogin, result);
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "index.jsp";
		}else {
			session.setAttribute("userId", loggedUser.getId());
			session.setAttribute("userName", loggedUser.getUserName());

			return "redirect:/welcome";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
