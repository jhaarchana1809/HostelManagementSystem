package com.saraswati.hostel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saraswati.hostel.entity.Admin;
import com.saraswati.hostel.entity.Student;
import com.saraswati.hostel.entity.User;
import com.saraswati.hostel.repository.UserRepository;

@Service
public class UserService {
@Autowired
private UserRepository userRepository;

public User saveUser(User user)
{
	return userRepository.save(user);
}

public User getUserById(Long id)
{
	return userRepository.findById(id).orElse(null);
}
public User getUserByName(String name)
{
	return userRepository.findByName(name);
}

public User getUserByEmail(String email)
{
	return userRepository.findByEmailId(email);
}

public User verifyUser(String email, String pass)
{
	return userRepository.verifyUser(email, pass);
}

// update password
public User updateUserPassword(String email, String password)
{
		User existUser=getUserByEmail(email);
	if(existUser!=null)
	{
		existUser.setPassword(password);
		User save = userRepository.save(existUser);
		
		return save;
	}
	return null;
}




public User updateStudent(Long id,User user)
{
	User existingUser=getUserById(id);
	if(existingUser!=null)
	{
		existingUser.setName(user.getName());
		existingUser.setAddress(user.getAddress());
		existingUser.setCity(user.getCity());
		existingUser.setAge(user.getAge());
		user.setEmailId(user.getEmailId());
		existingUser.setPassword(user.getPassword());
		existingUser.setPhoneNo(user.getPhoneNo());
		user.setPinCode(user.getPinCode());
		user.setPurposeOfStaying(user.getPurposeOfStaying());
		user.setState(user.getState());
		return userRepository.save(existingUser);
	}
	return null;
}
public void deleteStudent(Long id)
{
	userRepository.deleteById(id);
}
public List<User> getAllUser()
{
	return userRepository.findAll();
}


}
