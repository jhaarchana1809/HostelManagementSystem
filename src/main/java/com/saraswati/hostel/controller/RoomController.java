package com.saraswati.hostel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.saraswati.hostel.entity.Hostel;
import com.saraswati.hostel.entity.Room;
import com.saraswati.hostel.services.HostelService;
import com.saraswati.hostel.services.RoomService;


@Controller

public class RoomController { 
	@Autowired
	private RoomService roomService;
	@Autowired
	private HostelService hostelService;

	@GetMapping("/addRoom")
	public ModelAndView showAddRoomForm() {
	    List<Hostel> hostels = hostelService.getAllHostels(); // Retrieve all hostels from the database
	    ModelAndView mav = new ModelAndView("addRoom");
	    mav.addObject("hostels", hostels);
	    mav.addObject("room", new Room()); // Create an empty Room object for the form
	    return mav;
	}

	@PostMapping("/saveRoom")
	public String saveRoom(@ModelAttribute Room room) {
	    roomService.saveRoom(room); // Save the room, which will include the selected hostel as a foreign key
	    return "redirect:/manageRooms";
	}

 // View all Rooms
    @GetMapping("/manageRooms")
    public ModelAndView viewRoomToAdmin() {
        List<Room> rooms = roomService.getAllRooms();
        ModelAndView mav = new ModelAndView("manageRooms");
        mav.addObject("rooms", rooms);
        return mav;
    }
    //view all room to user
    
    @GetMapping("/roomavailable")
    public ModelAndView viewRoomToUser() {
        List<Room> rooms = roomService.getAllRooms();
        ModelAndView mav = new ModelAndView("roomavailable");
        mav.addObject("rooms", rooms);
        return mav;
    }
    
 //view all room to user after login
    
    @GetMapping("/viewroomdetails")
    public ModelAndView viewRoomToUserLogin() {
        List<Room> rooms = roomService.getAllRooms();
        ModelAndView mav = new ModelAndView("viewroomdetails");
        mav.addObject("rooms", rooms);
        return mav;
    }

    
 // Edit Room
    @GetMapping("/editRoom")
    public ModelAndView showEditRoomForm(@RequestParam("id") Long id) {
        Room room = roomService.getRoomById(id);
        ModelAndView mav = new ModelAndView("editRoom");
        mav.addObject("room", room);
        return mav;
    }

    @PostMapping("/updateRoom")
    public String updateRoom(@ModelAttribute Room room) {
        roomService.saveRoom(room); // Save changes
        return "redirect:/manageRooms"; // Redirect to manage rooms
    }

    // Delete Room
    @GetMapping("/deleteRoom")
    public ModelAndView showDeleteRoomConfirm(@RequestParam("id") Long id) {
        Room room = roomService.getRoomById(id);
        ModelAndView mav = new ModelAndView("deleteRoom");
        mav.addObject("room", room);
        return mav;
    }

    @PostMapping("/deleteRoom")
    public String deleteRoom(@RequestParam("id") Long id) {
        roomService.deleteRoom(id); // Delete the room
        return "redirect:/manageRooms"; // Redirect to manage rooms
    }
    //
}
