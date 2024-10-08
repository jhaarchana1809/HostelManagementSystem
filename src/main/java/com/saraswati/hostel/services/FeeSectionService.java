package com.saraswati.hostel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.saraswati.hostel.entity.FeeSection;
import com.saraswati.hostel.repository.FeeSectionRepository;
@Service
public class FeeSectionService {

	@Autowired
	private FeeSectionRepository feeRepository;
	
	public FeeSection saveRoom(FeeSection room)
	{
		return feeRepository.save(room);
	}
	public FeeSection getRoomPriceById(Long id)
	{
		return feeRepository.findById(id).orElse(null);
	}
	public void deleteFeeSection(Long id) {
		
		feeRepository.deleteById(id);
		
	}
	public List<FeeSection> getAllFeeSections() {
        return feeRepository.findAll();
    }
	
}


