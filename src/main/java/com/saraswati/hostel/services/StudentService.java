package com.saraswati.hostel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saraswati.hostel.entity.Student;
import com.saraswati.hostel.repository.StudentRepository;

@Service
public class StudentService {

	@Autowired
	private StudentRepository studentRepository;
	
	public Student saveStudent(Student student)
	{
		return studentRepository.save(student);
	}
	
	public Student getStudentById(String id)
	{
		return studentRepository.findById(id).orElse(null);
	}
	
	public Student updateStudent(String id, Student student)
	{
		Student existingStudent=getStudentById(id);
		if(existingStudent!=null)
		{
			existingStudent.setName(student.getName());
			existingStudent.setAddress(student.getAddress());
			existingStudent.setEmail(student.getEmail());
			existingStudent.setContactNumber(student.getContactNumber());
			existingStudent.setAge(student.getAge());
			return studentRepository.save(existingStudent);
		}
		return null;
	}
	public void deleteStudent(String id)
	{
		studentRepository.deleteById(id); 
	}
	public List<Student> getAllStudents()
	{
		return studentRepository.findAll();
	}
}
