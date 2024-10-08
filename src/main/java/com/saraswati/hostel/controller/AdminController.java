package com.saraswati.hostel.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.saraswati.hostel.entity.Admin;
import com.saraswati.hostel.entity.User;
import com.saraswati.hostel.services.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller

public class AdminController {

	@Autowired
	private AdminService adminService;

	

	@PostMapping("/adminforget")
	public String updatePassword(@ModelAttribute Admin admin, Map<String, Object> map) {
		
		Admin updatedAdmin = adminService.updateAdminPassword(admin);
		if(updatedAdmin!=null)
		{
		map.put("admin", updatedAdmin);
		map.put("msg", "Password changed successfully");
		
		return "adminforget";
		}
		else
		{
			map.put("msg", "Wrong Email address!!");
			return "adminPasswordNotChange";
		}

	}
	
	@PostMapping("/admin")
		public String adminLogin(@RequestParam("email") String mail, @RequestParam String password, Map<String, Object> map) {	
		Admin exist = adminService.verifyAdmin(mail, password);
		if(exist!=null)
		{
		map.put("verify", "Login Successfully");
		return "adminLogin";
		}
		map.put("NotVerify", "Email-Id or password does not exist");
		return "adminLoginFail";
		}
	
	// return back to admin dashboard
		@GetMapping("/adminDashboard")
		public String backToDashboard() {
			return "adminLogin";
		}

	

}
