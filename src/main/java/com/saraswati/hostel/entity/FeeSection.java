package com.saraswati.hostel.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "feesection")
public class FeeSection {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	private String sharingRoom;
	private double bedCharge;
	 private double foodCharge;
	 private double totalFee;
	 

}
