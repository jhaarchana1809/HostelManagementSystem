package com.saraswati.hostel.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.saraswati.hostel.entity.Booking;
import com.saraswati.hostel.entity.User;

public interface BookingRepository extends JpaRepository<Booking, Long> {
	
	public List<Booking> findByUser(User user);

}
