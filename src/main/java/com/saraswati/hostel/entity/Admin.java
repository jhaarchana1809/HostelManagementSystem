package com.saraswati.hostel.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name="Admin")
public class Admin {
	@Id
	private Long id;
	private String emailId;
	private String adminName;
	private long phoneNo;
	private String password;

}
