package com.isacojeda.authentication.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.isacojeda.authentication.models.Book;
import com.isacojeda.authentication.repositories.BookRepository;

@Service
public class BookService {
	private final BookRepository bookRepo;


	public BookService(BookRepository bookRepo) {
		this.bookRepo = bookRepo;
	}

	//find all
	public List<Book> allBooks(){
		return bookRepo.findAll();
	}
	
	//find one
	public Book oneBook(Long id) {
		Optional<Book> optionalBook = bookRepo.findById(id);
		if(optionalBook.isPresent()) {
			return optionalBook.get();
		}else {
			return null;
		}
	}
	
	//create
	public Book addBook(Book newBook) {
		return bookRepo.save(newBook);
	}
	
	//update
	public Book updateBook(Book book) {
		return bookRepo.save(book);
	}
	
	//delete
	public void deleteBook(Long id) {
		bookRepo.deleteById(id);
	}
}
