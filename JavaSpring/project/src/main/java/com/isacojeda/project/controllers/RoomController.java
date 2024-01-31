package com.isacojeda.project.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.isacojeda.project.models.Room;
import com.isacojeda.project.services.RoomService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class RoomController {
	@Autowired
	private RoomService roomService;
	
	@GetMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	@GetMapping("/rooms/new")
	public String addRoom(@ModelAttribute("newRoom")Room newRoom,
			HttpSession session) {
		if(session.getAttribute("userId")==null) {
			return "redirect:/";
		}else {
			return "adminadd.jsp";
		}
	}
	
	@PostMapping("/rooms/new")
	public String processAdd(
			@Valid @ModelAttribute("newRoom")Room newRoom,
			BindingResult result
			) {
		if(result.hasErrors()) {
			return "adminadd.jsp";
		}else {
			roomService.addRoom(newRoom);
			return "adminrooms.jsp";
		}
		
	}
	
	@GetMapping("/rooms/{id}")
	public String details(@PathVariable("id")Long id,
			Model model) {
		Room oneRoom = roomService.oneRoom(id);
		model.addAttribute("oneRoom",oneRoom);
		return "reserve.jsp";
	}
	
	
	@GetMapping("/rooms")
	public String rooms(Model model) {
		List<Room> allRooms = roomService.allRooms();
		model.addAttribute("roomList",allRooms);
		return "rooms.jsp";
	}
	

}
