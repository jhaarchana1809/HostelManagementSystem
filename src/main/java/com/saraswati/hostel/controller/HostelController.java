package com.saraswati.hostel.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.saraswati.hostel.entity.Hostel;
import com.saraswati.hostel.services.HostelService;

@Controller

public class HostelController {

	  @Autowired
	    private HostelService hostelService;

	  @PostMapping("/addhostel")
	    public ModelAndView addHostel(@ModelAttribute Hostel hostel) {
	        Hostel newHostel = hostelService.saveHostel(hostel);
	        ModelAndView mav = new ModelAndView("viewAllHostel");
	        mav.addObject("hostels", hostelService.getAllHostels());
	        mav.addObject("msg", "Hostel added successfully!!");
	        return mav;
	    }
	    
	 // View all hostels
	    @GetMapping("/viewAllHostel")
	    public ModelAndView viewAllHostels() {
	        List<Hostel> hostels = hostelService.getAllHostels();
	        ModelAndView mav = new ModelAndView("viewAllHostel");
	        mav.addObject("hostels", hostels);
	        return mav;
	    }
	    
	    
	    @GetMapping("/editHostel")
	    public ModelAndView showEditHostelForm(@RequestParam("id") Long id) {
	        Hostel hostel = hostelService.getHostelById(id);
	        ModelAndView mav = new ModelAndView("editHostel");
	        mav.addObject("hostel", hostel);
	        return mav;
	    }

	    @PostMapping("/updateHostel")
	    public String updateHostel(@ModelAttribute Hostel hostel) {
	        hostelService.saveHostel(hostel); // Save changes
	        return "redirect:/viewAllHostel"; // Redirect to view all hostels
	    }

	    @GetMapping("/deleteHostel")
	    public ModelAndView showDeleteHostelConfirm(@RequestParam("id") Long id) {
	        Hostel hostel = hostelService.getHostelById(id);
	        ModelAndView mav = new ModelAndView("deleteHostel");
	        mav.addObject("hostel", hostel);
	        return mav;
	    }

	    @PostMapping("/deleteHostel")
	    public String deleteHostel(@RequestParam("id") Long id) {
	        hostelService.deleteHostel(id); // Delete the hostel
	        return "redirect:/viewAllHostel"; // Redirect to view all hostels
	    }


}
