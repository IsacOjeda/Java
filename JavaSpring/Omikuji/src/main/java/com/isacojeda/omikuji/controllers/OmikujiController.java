package com.isacojeda.omikuji.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpSession;

@Controller
public class OmikujiController {
	
	@RequestMapping("/")
	public String index() {
		return "omikuji.jsp";
	}
	
	@RequestMapping("/omikuji")
	public String login(
			@RequestParam(value="num")int num,
			@RequestParam(value="city")String city,
			@RequestParam(value="person")String person,
			@RequestParam(value="job")String job,
			@RequestParam(value="thing")String thing,
			@RequestParam(value="somethingnice")String somethingnice,
			HttpSession session,
			RedirectAttributes redirectAttributes
			) {
		if(city.length()<1) {
			redirectAttributes.addFlashAttribute("cityError","City Name Required!");
			return "redirect:/";
		}else if(person.length()<1) {
			redirectAttributes.addFlashAttribute("personError","Person Name Required!");
			return "redirect:/";
		}else if(job.length()<1) {
			redirectAttributes.addFlashAttribute("jobError","Professional endeavor or hobby Required!");
			return "redirect:/";
		}else if(thing.length()<1) {
			return "redirect:/";
		}else if(somethingnice.length()<1) {
			redirectAttributes.addFlashAttribute("somethingniceError","Cmon man say something nice :/ ....pls");
			return "redirect:/";
		}
		session.setAttribute("num", num);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("job",job);
		session.setAttribute("thing",thing);
		session.setAttribute("somethingnice", somethingnice);
		return "redirect:/fortune";
	}
	@RequestMapping("/fortune")
	public String fortune() {
		return "fortune.jsp";
	}
	
	
	
}
