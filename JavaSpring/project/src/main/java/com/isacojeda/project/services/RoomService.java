package com.isacojeda.project.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.isacojeda.project.models.Room;
import com.isacojeda.project.repositories.RoomRepository;

@Service
public class RoomService {
	@Autowired
	private RoomRepository roomRepo;
	//find all
	public List<Room> allRooms(){
		return roomRepo.findAll();
	}
	//find one
	public Room oneRoom(Long id) {
		Optional<Room> optionalRoom = roomRepo.findById(id);
		if(optionalRoom.isPresent()) {
			return optionalRoom.get();
		}else {
			return null;
		}
	}
	
	//create
	public Room addRoom(Room newRoom) {
		return roomRepo.save(newRoom);
	}
	
	//update
	public Room updateRoom(Room newRoom) {
		return roomRepo.save(newRoom);
	}
	
	//delete
	public void deleteRoom(Long id) {
		roomRepo.deleteById(id);
	}
	

}
