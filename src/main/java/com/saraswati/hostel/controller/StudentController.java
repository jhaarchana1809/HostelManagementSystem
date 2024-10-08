package com.saraswati.hostel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.saraswati.hostel.entity.Student;
import com.saraswati.hostel.services.StudentService;

@RestController
@RequestMapping("/students")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@PostMapping
	public ResponseEntity<Student> addRoom(@RequestBody Student student)
	{
		Student newStudent=studentService.saveStudent(student);
		return new ResponseEntity<Student>(newStudent, HttpStatus.CREATED);
	}
	@GetMapping("/{id}")
	public ResponseEntity<Student> getRoomById(@PathVariable String id)
	{
		Student student=studentService.getStudentById(id);
		return new ResponseEntity<Student>(student, HttpStatus.OK);
	}
		
	 @PutMapping("/{id}")
	    public ResponseEntity<Student> updateRoom(@PathVariable String id, @RequestBody Student student) {
		 Student updatedstudent = studentService.updateStudent(id, student);
	        return new ResponseEntity<Student>(updatedstudent, HttpStatus.OK);	    }

	    @DeleteMapping("/{id}")
	    public ResponseEntity<Void> deleteHostel(@PathVariable String id) {
	        studentService.deleteStudent(id);
	        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	    }

	    @GetMapping
	    public ResponseEntity<List<Student>> getAllHostels() {
	        List<Student> rooms = studentService.getAllStudents();
	        return new ResponseEntity<>(rooms, HttpStatus.OK);
	    }

}
