package com.saraswati.hostel.entity;

import java.time.LocalDate;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table
@Data

public class Booking {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "booking_seq")
    @SequenceGenerator(name = "booking_seq", sequenceName = "booking_seq", allocationSize = 1, initialValue = 1)
    private Long id;

    @ManyToOne(targetEntity = Room.class, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinColumn(name = "room_id", referencedColumnName = "id", nullable = false)
    private Room room;
    
    private String roomNumber;
    private int noOfBeds;
    
    @ManyToOne(targetEntity = User.class, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
    @JoinColumn(name = "user_id", referencedColumnName = "id")
    private User user;
    private String userName;

    private LocalDate checkInDate;
    private LocalDate checkOutDate;
}
