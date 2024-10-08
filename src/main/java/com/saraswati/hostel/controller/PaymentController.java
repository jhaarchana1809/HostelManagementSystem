package com.saraswati.hostel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.saraswati.hostel.entity.Payment;


@RestController
@RequestMapping("/payments")
public class PaymentController {
	/*
	@Autowired
	private PaymentService paymentService;
	
	@PostMapping
	public ResponseEntity<Payment> addPayment(@RequestBody Payment payment)
	{
		Payment newPayment=paymentService.savePayment(payment);
		return new ResponseEntity<Payment>(newPayment, HttpStatus.CREATED);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Payment> getPaymentById(@PathVariable Long id)
	{
		Payment payment=paymentService.getPaymentById(id);
		return new ResponseEntity<Payment>(payment, HttpStatus.OK);
	}
	
	@GetMapping
	public ResponseEntity<List<Payment> >getAllPayments(){
		
		List<Payment> payments=paymentService.getAllPayments();
		return new ResponseEntity<List<Payment>>(payments, HttpStatus.OK);
	}
*/
}
