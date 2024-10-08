package com.saraswati.hostel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saraswati.hostel.entity.Room;
import com.saraswati.hostel.repository.RoomRepository;

@Service
public class RoomService {

	@Autowired
	private RoomRepository roomRepository;
	
	public Room saveRoom(Room room)
	{
		room.setAvailablebed(room.getCapacity()-room.getAllocatedBeds());
		return roomRepository.save(room);
	}
	public Room getRoomById(Long id)
	{
		return roomRepository.findById(id).orElse(null) ; 
	}
	public Room updateRoom(Long id, Room room)
	{
		Room existinngRoom= getRoomById(id);
		if(existinngRoom!=null)
		{
			existinngRoom.setRoomNumber(room.getRoomNumber());
			existinngRoom.setCapacity(room.getCapacity());
			existinngRoom.setAllocatedBeds(room.getAllocatedBeds());
			
			return roomRepository.save(existinngRoom);
		}
		return null;
	}
	public void deleteRoom(Long id)
	{
		roomRepository.deleteById(id);
	}
	public List<Room> getAllRooms()
	{
		 return roomRepository.findAll();
	}
}
