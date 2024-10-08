package com.saraswati.hostel.entity;

import org.springframework.core.annotation.Order;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "rooms")

public class Room {
 @Id
 private Long id;
 private String roomNumber;
 private int capacity;
 private int allocatedBeds;
 private int availablebed;
 
 
 
 @ManyToOne(targetEntity = Hostel.class)
 @JoinColumn(name="fk_hostel_id",referencedColumnName = "id")
 private Hostel hostel;
}
