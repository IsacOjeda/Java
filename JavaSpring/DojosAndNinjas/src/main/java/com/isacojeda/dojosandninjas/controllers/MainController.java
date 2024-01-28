package com.isacojeda.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.isacojeda.dojosandninjas.models.Dojo;
import com.isacojeda.dojosandninjas.models.Ninja;
import com.isacojeda.dojosandninjas.services.DojoService;
import com.isacojeda.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;



@Controller
public class MainController {
	
	@Autowired
	DojoService dojoService;
	
	@Autowired
	NinjaService ninjaService;

	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("dojos",dojoService.allDojos());
		return "index.jsp";
	}
	
	@GetMapping("dojos/new")
	public String newDojo(@ModelAttribute("dojo")Dojo dojo) {
		return "new_dojo.jsp";
	}

	@PostMapping("/dojos/new")
	public String createNewDojo(@Valid @ModelAttribute("dojo")Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return "new_dojo.jsp";
		}else {
			dojoService.createDojo(dojo);
			return "redirect:/";
		}

	}
	
	
	@GetMapping("/dojos/{id}")
	public String newDojo(@PathVariable("id")Long id, Model model) {
		model.addAttribute("dojo", dojoService.findDojo(id));
		return "show_dojo.jsp";
	}
	
	@GetMapping("/ninjas/new")
	public String newNinja(Model model,@ModelAttribute("ninja")Ninja ninja) {
			model.addAttribute("dojos",dojoService.allDojos());
			return "new_ninja.jsp";
		}
	
	@PostMapping("/ninjas/new")
	public String createNewNinja(Model model, @Valid @ModelAttribute("ninja")Ninja ninja, BindingResult result) {
		if(result.hasErrors()) {
			model.addAttribute("dojos", dojoService.allDojos());
			return "new_ninja.jsp";
		}else {
			ninjaService.createNinja(ninja);
			return "redirect:/";
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

