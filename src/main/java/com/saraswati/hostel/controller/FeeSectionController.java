package com.saraswati.hostel.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.saraswati.hostel.entity.FeeSection;
import com.saraswati.hostel.entity.Hostel;
import com.saraswati.hostel.entity.Room;
import com.saraswati.hostel.services.FeeSectionService;

@Controller
public class FeeSectionController {

    @Autowired
    private FeeSectionService feeSectionService;

    @GetMapping("/addFeeSection")
	public ModelAndView showAddFeeSectionForm() {
	   
	    ModelAndView mav = new ModelAndView("addFeeSection");
	   
	    mav.addObject("feeSection", new FeeSection()); // Create an empty Fee object for the form
	    return mav;
	}
 
   // Handle form submission to save a new Fee Section
    @PostMapping("/saveFeeSection")
    public String saveFeeSection(@ModelAttribute("feeSection") FeeSection feeSection) {
        feeSectionService.saveRoom(feeSection);
        return "redirect:/viewAllFeeSections"; // Redirect to a list view of all Fee Sections
    }

    // Show all Fee Sections
    @GetMapping("/viewAllFeeSections")
    public String viewAllFeeSections(Model model) {
        model.addAttribute("feeSections", feeSectionService.getAllFeeSections());
        return "viewAllFeeSections"; // Return the name of the JSP file (without .jsp)
    }

    // Show form to edit a Fee Section
    @GetMapping("/editFeeSection")
    public String showEditFeeSectionForm(@RequestParam("id") Long id, Model model) {
        FeeSection feeSection = feeSectionService.getRoomPriceById(id);
        model.addAttribute("feeSection", feeSection);
        return "editFeeSection"; // Return the name of the JSP file (without .jsp)
    }

    // Handle form submission to update an existing Fee Section
    @PostMapping("/updateFeeSection")
    public String updateFeeSection(@ModelAttribute("feeSection") FeeSection feeSection) {
        feeSectionService.saveRoom(feeSection);
        return "redirect:/viewAllFeeSections"; // Redirect to a list view of all Fee Sections
    }

    // Show confirmation page for deletion
    @GetMapping("/confirmDeleteFeeSection")
    public ModelAndView showDeleteFeeSectionConfirm(@RequestParam("id") Long id) {
        FeeSection feeSection = feeSectionService.getRoomPriceById(id);
        ModelAndView mav = new ModelAndView("confirmDeleteFeeSection");
        mav.addObject("feeSection", feeSection);
        return mav;
    }

    // Handle actual deletion after confirmation
    @PostMapping("/confirmDeleteFeeSection")
    public String deleteFeeSection(@RequestParam("id") Long id) {
        feeSectionService.deleteFeeSection(id);
        return "redirect:/viewAllFeeSections"; // Redirect to a list view of all Fee Sections
    }
    //show fee details to user
    @GetMapping("/feeDetails")
    public ModelAndView viewFeeDetails() {
        // Fetch fee details from service
        List<FeeSection> feeDetails = feeSectionService.getAllFeeSections(); // Replace with your actual method

        ModelAndView mav = new ModelAndView("feeDetails");
        mav.addObject("feeDetails", feeDetails);
        return mav;
    }
}
