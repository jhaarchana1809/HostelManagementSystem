package com.saraswati.hostel.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.saraswati.hostel.entity.Hostel;

public interface HostelRepository extends JpaRepository<Hostel, Long> {

}
