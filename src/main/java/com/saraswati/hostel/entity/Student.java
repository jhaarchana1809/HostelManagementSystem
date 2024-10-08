package com.saraswati.hostel.entity;

import java.util.Date;

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
@Table(name = "student1")
@Order(5)
public class Student {
    @Id
    private String email;
    private String name;
    private int age;
    private String contactNumber;
    private String password;
    private String address;
    private Date admissionDate;

    @ManyToOne(targetEntity = Room.class,cascade = CascadeType.ALL)
    @JoinColumn(name = "room_id", referencedColumnName = "id")
    private Room room;

    }