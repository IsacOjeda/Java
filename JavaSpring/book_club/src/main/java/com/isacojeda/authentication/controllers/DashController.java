package com.isacojeda.authentication.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.isacojeda.authentication.models.Book;
import com.isacojeda.authentication.services.BookService;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class DashController {
	
	private final BookService bookService;
	
	public DashController(BookService bookService) {
		super();
		this.bookService = bookService;
	}

	@GetMapping("/welcome")
	public String welcomeDashboard(HttpSession session, Model model) {
		if(session.getAttribute("userId")==null) {
			return "redirect:/logout";
		}
		model.addAttribute("bookList", bookService.allBooks());
		
		return "dash.jsp";
	}
	//create
	//1 render the create form
	@GetMapping("/books/new")
	public String renderNewBookForm(@ModelAttribute("newBook")Book newBook) {
		return "newBook.jsp";
	}
	
	//process create
	@PostMapping("/books/new")
	public String processNewBook(@Valid @ModelAttribute("newBook")Book newBook,BindingResult result) {
		if(result.hasErrors()) {
			return "newBook.jsp";
		}else {
			bookService.addBook(newBook);
			return "redirect:/welcome";
		}
	}
//find one
	@GetMapping("/books/{id}")
	public String bookDetails(@PathVariable("id") Long id,Model model) {
		model.addAttribute("book",bookService.oneBook(id));
		return "bookDetails.jsp";
	}
	
	//edit
	
	@GetMapping("/books/{id}/edit")
	public String renderEditBook(@PathVariable("id")Long id, Model model) {
	model.addAttribute("book",bookService.oneBook(id));
	return "editBook.jsp";
	}
	
	
	
	@PutMapping("/books/{id}/edit")
	public String processEditBook(@Valid @ModelAttribute("book")Book book,BindingResult result) {
		if(result.hasErrors()) {
			return "editBook.jsp";
		}else {
			bookService.updateBook(book);
			return "redirect:/welcome";
		}
	}
	
	@DeleteMapping("/books/{id}")
	public String processDeleteBook(@PathVariable("id")Long id) {
		bookService.deleteBook(id);
		return "redirect:/welcome";
	}
	
	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

