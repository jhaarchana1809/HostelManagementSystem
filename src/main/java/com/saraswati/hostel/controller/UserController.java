package com.saraswati.hostel.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.servlet.WebMvcProperties.View;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.saraswati.hostel.entity.User;
import com.saraswati.hostel.services.UserService;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	

	// register user
	@PostMapping("/userRegister")
	public String requestMethodName(@ModelAttribute User user, Map<String, Object> map) {

		User user2 = userService.saveUser(user);

		map.put("user", user2);
		map.put("msg", "Successfully Registered");

		return "userRegisterSuccess";
	}
	@GetMapping("/userlogin")
	public String goToUserLoginPage()
	{
		return "uselogin";
	}

	// login user
	@PostMapping("/userLogin")
	public String userLogin(@RequestParam String emailId, @RequestParam String password, Map<String, Object> map,
			HttpServletRequest req) {
		ServletContext contex = req.getServletContext();
		HttpSession session = req.getSession();
		User exist = userService.verifyUser(emailId, password);
		if (exist != null) {
			contex.setAttribute("name", exist.getName());
			session.setAttribute("userlogin", exist);
			map.put("msg", "Login success.");
			map.put("user", exist);
			return "userloginsuccess";
		} else {
			map.put("msg", "Email-Id or password does not exist!!");

			return "userLoginFail";
		}
	}

	// forget password
	@PostMapping("/userforget")
	public String changePassword(@RequestParam("emailId") String emailId, 
	                             @RequestParam("password") String password,
	                             Model model) {
	    User userExist = userService.updateUserPassword(emailId, password);
	    if (userExist != null) {
	        model.addAttribute("msg", "Password has been changed!!!");
	        return "userPasswordChange";
	    } else {
	        model.addAttribute("msg", "Wrong Email address!!");
	        return "userPasswordNotChange";
	    }
	    
	}
	// get all student to admin section
	@GetMapping("/managestudents")
	public String viewAllStudents(Model model) {
		model.addAttribute("students", userService.getAllUser());// return all students
		return "managestudents";
	}
	// delete user
	@GetMapping("/removeStudent")
	public String deleteFeeSection(@RequestParam("id") Long id) {
		userService.deleteStudent(id);
		return "redirect:/managestudents"; // Redirect to a list view of all Fee Sections
	}

// return back to user dashboard
	@GetMapping("/dashboard")
	public String backToDashboard(HttpServletRequest req, Model m) {
		HttpSession session = req.getSession();
		User user = (User) session.getAttribute("user");
		m.addAttribute("user", user);
		return "userloginsuccess";
	}
	// Method to show the update profile page
	@GetMapping("/updateProfile")
	public String showUpdateProfile(@RequestParam("id") Long id, Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		User user = userService.getUserById(id);
		model.addAttribute("user", user);
		session.setAttribute("user", user);
		return "updateProfile";
	}
	// Method to handle form submission of updateProfile jsp page
	@PostMapping("/updateProfile")
	public String updateUserProfile(@RequestParam("id") Long id, @ModelAttribute("user") User user, Model model) {
		userService.updateStudent(id, user); // Save updated user details
		model.addAttribute("msg", "Profile updated successfully");
		return "userloginsuccess"; // Redirect to a success page or dashboard
	}
}
