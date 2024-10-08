package com.saraswati.hostel.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.saraswati.hostel.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {

   
    public Admin findByEmailId(String email);
    
    
    @Query("FROM Admin WHERE emailId = :email AND password = :pass")
    public Admin verifyAdmin(@Param("email") String email, @Param("pass") String pass);

}
