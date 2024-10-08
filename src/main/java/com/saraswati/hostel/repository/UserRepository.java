package com.saraswati.hostel.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.saraswati.hostel.entity.User;

public interface UserRepository extends JpaRepository<User, Long>{

	
	@Query("FROM User WHERE emailId = :emailId AND password = :password")
	public User verifyUser(@Param("emailId")String emailId, @Param("password")String password);
	public User findByName(String name); 
	public User findByEmailId(String email); 
}
