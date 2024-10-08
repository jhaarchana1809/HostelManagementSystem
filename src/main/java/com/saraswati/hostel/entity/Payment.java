package com.saraswati.hostel.entity;



import java.util.Date;

import org.springframework.core.annotation.Order;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;
@Data

public class Payment {
	/*
	 * @Id
	 * 
	 * @GeneratedValue(strategy = GenerationType.IDENTITY) private Long id;
	 * 
	 * private double amount; private Date paymentDate; private String status;
	 * 
	 * @ManyToOne(targetEntity = Student.class,cascade = CascadeType.ALL)
	 * 
	 * @JoinColumn(name = "fk_student_email",referencedColumnName = "email") private
	 * Student student;
	 */
   
}