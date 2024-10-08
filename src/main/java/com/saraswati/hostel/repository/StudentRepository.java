package com.saraswati.hostel.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.saraswati.hostel.entity.Student;

public interface StudentRepository extends JpaRepository<Student, String> {

}
