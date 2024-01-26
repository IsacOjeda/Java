package com.isacojeda.safetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.isacojeda.safetravels.models.Expense;
import com.isacojeda.safetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	//adding repository as dependency
	private final ExpenseRepository expenseRepo;
	
	public ExpenseService(ExpenseRepository expenseRepo) {
		this.expenseRepo = expenseRepo;
	}
	// returns all expenses
	public List<Expense> allExpenses(){
		return expenseRepo.findAll();
	}
	
	//adds expense
	public Expense addExpense(Expense expense) {
		return expenseRepo.save(expense);
	}
	//retrieves expense
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepo.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		}else {
			return null;
		}
	}
	//updates expense
	public Expense updateExpense(Expense expense) {
		return expenseRepo.save(expense);
	}
	
	//deletes expense
	public void deleteExpense(Long id) {
		expenseRepo.deleteById(id);

	}
	

}
