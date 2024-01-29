package com.isacojeda.authentication.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.isacojeda.authentication.models.LoginUser;
import com.isacojeda.authentication.models.User;
import com.isacojeda.authentication.repositories.UserRepository;

@Service
public class UserService {
	
	
	private final UserRepository userRepo;
	
	public UserService(UserRepository userRepo) {
		this.userRepo = userRepo;
	}
	
	public User register(User newUser, BindingResult result) {
		//TO-DO-REJECT VALUES
		//Reject if email is taken (present in db)
		//1. find user in the db by email
		Optional<User> optionalUser = userRepo.findByEmail(newUser.getEmail()); //email from form
		//2. if the email is present, reject
		if(optionalUser.isPresent()) {
			result.rejectValue("email", "unique", "Email is already registered");
		}
		//reject if password doesnt match confirmation
		if(!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "Matches", "The Confirm password must match Password!");
		}
		//if result has errors, return
		if(result.hasErrors()) {
			return null;
		}
		//hash and set password, save user to database
		String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
		newUser.setPassword(hashed);
		return userRepo.save(newUser);
	}
	
	public User login(LoginUser newLogin, BindingResult result) {
		//todo- reject values:
		//find user in the db by email
		Optional<User> potentialUser = userRepo.findByEmail(newLogin.getEmail());
		//if the email is not present, reject
		if(!potentialUser.isPresent()) {
			result.rejectValue("email", "unique", "Email is not registered");
			return null;
		}
		// 1 grab the user from potential user
		User user = potentialUser.get();
		// 2 if bcyrpt password match fails
		if(!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
			result.rejectValue("password","Matches","Invalid Password!");
		}
		// if result has errors,return
		if(result.hasErrors()) {
			return null;
		}
		//otherwise return the user object
		return user;
	}

}
