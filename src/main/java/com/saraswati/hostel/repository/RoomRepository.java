package com.saraswati.hostel.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.saraswati.hostel.entity.Room;

public interface RoomRepository extends JpaRepository<Room, Long> {

}
