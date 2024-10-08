package com.saraswati.hostel.services;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saraswati.hostel.entity.Admin;
import com.saraswati.hostel.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;
	

	public Admin getAdminById(Long id)
	{
		return adminRepository.findById(id).orElse(null);

	}
	public Admin getAdminByEmail(String email)
	{
		return adminRepository.findByEmailId(email);

	}

	
	public Admin updateAdminPassword(Admin admin)
	{
		Admin existAdmin=getAdminByEmail(admin.getEmailId());
		
		if(existAdmin!=null)
		{
			existAdmin.setPassword(admin.getPassword());
			Admin save = adminRepository.save(existAdmin);
			
			return save;
		}
		return null;
	}

	public Admin verifyAdmin(String email, String pass)
	{
		Admin existAdmin=adminRepository.verifyAdmin(email, pass);
		if(existAdmin !=null ) {
		
			return existAdmin;
		}
		
				
		return null;
	}
}
