package com.isacojeda.safetravels.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.isacojeda.safetravels.models.Expense;
import com.isacojeda.safetravels.services.ExpenseService;

import jakarta.validation.Valid;

@Controller
public class ExpenseController {
	
	@Autowired
	ExpenseService expenseService;
	
	@GetMapping("/")
	public String home(@ModelAttribute("expense")Expense expense, Model model) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses",expenses);
		return "home.jsp";
	}
	
	@PostMapping("/new")
	public String addExpense(@Valid @ModelAttribute("expense")Expense expense, BindingResult result, Model model) {
		if(result.hasErrors()) {
			List<Expense> expenses = expenseService.allExpenses();
			model.addAttribute("expenses",expenses);
			return "home.jsp";
		}
		expenseService.addExpense(expense);
		return "redirect:/";
	}
	
	@GetMapping("/edit/{id}")
	public String editExpense(@PathVariable("id")Long id, @ModelAttribute("expense")Expense expense, Model model) {
		model.addAttribute("expense",expenseService.findExpense(id));
		return "edit.jsp";	
	}
	
	@PostMapping("/edit/{id}")
	public String updateExpense(@Valid @ModelAttribute("expense")Expense expense, BindingResult result, @PathVariable("id")Long id, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("expense",expense);
			return "edit.jsp";
		}
		expenseService.updateExpense(expense);
		return "redirect:/";
	
		
	}

	@DeleteMapping(value="/expenses/{id}")
	public String destroy(@PathVariable("id")Long id) {
		expenseService.deleteExpense(id);
		return "redirect:/";
	}
	
	@GetMapping("/expense/{id}")
	public String expenseDetails(Model model, @PathVariable("id")Long id) {
		Expense expense = expenseService.findExpense(id);
		model.addAttribute("expense",expense);
		
		return "details.jsp";
	}	
		
		
	

}
