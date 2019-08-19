package com.hotel.booking.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.hotel.booking.dao.Dao;
import com.hotel.booking.dto.Hotel;
import com.hotel.booking.dto.HotelRating;

@Service
public class HotelService {

	@Autowired
	private Dao dao;

	public boolean addHotel(Hotel hotel) {
		return dao.addHotel(hotel);	
	}

	public boolean updateHotel(Hotel hotel) {
		return dao.updateHotel(hotel);	
	}

	public  List<Hotel> getHotelsByCity(Date date, String name, int rooms) {
		return dao.getHotelByCity(date,name,rooms);
	}

	public boolean deleteHotel(String hotelName) {
		return dao.deleteHotel(hotelName);
	}

	public boolean addRating(HotelRating rating) {
		return dao.addRating(rating);
	}

	public List<Hotel> getHotelByFilter(Hotel hotel) {
		return dao.getHotelByFilter(hotel);
	}
}
