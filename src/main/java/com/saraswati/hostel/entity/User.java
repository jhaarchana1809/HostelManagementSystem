package com.saraswati.hostel.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
@Table(name = "users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_seq")
	@SequenceGenerator(
		    name = "user_seq", 
		    sequenceName = "user_seq", 
		    allocationSize = 1, 
		    initialValue = 1
		)
	private Long id;
	private String emailId;
	private String name;
	private int age;
	private String password;
	private long phoneNo;
	private String address;
	private String city;
	private String state;
	private long pinCode;
	private String purposeOfStaying;
	
	
}
