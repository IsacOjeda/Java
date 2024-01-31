package com.isacojeda.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.isacojeda.project.models.LoginUser;
import com.isacojeda.project.models.Room;
import com.isacojeda.project.models.User;
import com.isacojeda.project.services.RoomService;
import com.isacojeda.project.services.UserService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private RoomService roomService;
	
	@GetMapping("/admin/register/login")
	public String renderLogregForm(Model model) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "logreg.jsp";
	}
	
	
	@PostMapping("/register")
	public String processRegister(
			@Valid @ModelAttribute("newUser")User newUser,
			BindingResult result,
			HttpSession session, Model model) {
		User registeredUser = userService.register(newUser, result);
		if(result.hasErrors()) {
			model.addAttribute("newLogin",new LoginUser());
			return "logreg.jsp";
		}else {
			session.setAttribute("userId", registeredUser.getId());
			session.setAttribute("userName", registeredUser.getUserName());
			return "adminrooms.jsp";
		}
	}
	
	@PostMapping("/login")
	public String processLogin(
			@Valid @ModelAttribute("newLogin")LoginUser newLogin,
			BindingResult result,
			HttpSession session, Model model) {
		User loggedInUser = userService.login(newLogin, result);
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "logreg.jsp";
		}else {
			List<Room> allRooms = roomService.allRooms();
			model.addAttribute("roomList",allRooms);
			session.setAttribute("userId", loggedInUser.getId());
			session.setAttribute("userName", loggedInUser.getUserName());
			return "adminrooms.jsp";
		}
	}
	@GetMapping("/login")
	public String adminRooms(Model model,HttpSession session) {
		if(session.getAttribute("userId")==null) {
			return "redirect:/";
	}else {
		List<Room> allRooms = roomService.allRooms();
		model.addAttribute("roomList",allRooms);
		return "adminrooms.jsp";
	}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
		}
	
	
}
