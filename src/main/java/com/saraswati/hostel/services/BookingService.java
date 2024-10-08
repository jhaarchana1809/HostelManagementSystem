package com.saraswati.hostel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saraswati.hostel.entity.Booking;
import com.saraswati.hostel.entity.User;
import com.saraswati.hostel.repository.BookingRepository;

@Service
public class BookingService {

	
	 @Autowired
	    private BookingRepository bookingRepository;

	 public Booking getBookingById(Long id)
	 {
		 return bookingRepository.findById(id).orElse(null);
	 }
	 
	    public List<Booking> getAllBookings() {
	        return bookingRepository.findAll();
	    }
	    
	    public List<Booking> getAllBookingsByUser(User user) {
	        return bookingRepository.findByUser(user);
	    }
	    
	    public Booking saveBooking(Booking booking) {
	        return bookingRepository.save(booking);
	    }
	    
	    public void deleteBooking(Long id )
	    {
	    	bookingRepository.deleteById(id);
	    }
}
