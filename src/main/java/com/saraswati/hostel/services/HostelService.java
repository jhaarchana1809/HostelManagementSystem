package com.saraswati.hostel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saraswati.hostel.entity.Hostel;
import com.saraswati.hostel.repository.HostelRepository;

@Service
public class HostelService {

	@Autowired
	private HostelRepository hostelRepository;

	public Hostel saveHostel(Hostel hostel) {
		return hostelRepository.save(hostel);
	}

	public Hostel getHostelById(Long id) {
		return hostelRepository.findById(id).orElse(null);
	}

	public Hostel updateHostel(Long id, Hostel hostel) {
		Hostel existingHostel = getHostelById(id);
		if (existingHostel != null) {
			existingHostel.setName(hostel.getName());
			existingHostel.setAddress(hostel.getAddress());

			return hostelRepository.save(existingHostel);
		}
		return null;
	}

	public void deleteHostel(Long id) {
		hostelRepository.deleteById(id);
	}

	public List<Hostel> getAllHostels() {
		return hostelRepository.findAll();
	}
}
