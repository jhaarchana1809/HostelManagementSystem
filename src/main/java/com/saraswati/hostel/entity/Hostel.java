package com.saraswati.hostel.entity;

import org.springframework.core.annotation.Order;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;
@Data
@Entity
@Table(name = "hostel1")
@Order(1)
public class Hostel {

	@Id //primary key
	
	private Long id;
	private String name;
	private String address;
}
