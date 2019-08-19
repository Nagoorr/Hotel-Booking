package com.hotel.booking.dao;


import java.sql.Date;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.hotel.booking.dto.Hotel;
import com.hotel.booking.dto.HotelRating;
import com.hotel.booking.dto.User;

// interface to define the abstract methods regarding service for user,hotel
public interface Dao {

	boolean registerUser(User user);
	User userLogin(User user);
	boolean updateUser(User user);
	boolean deleteUser(String name, String password);
	boolean addHotel(Hotel hotel);
	boolean updateHotel(Hotel hotel);
	boolean deleteHotel(String hotelName);
	List<Hotel> getHotelByCity(Date date, String name, int rooms);
	boolean addRating(HotelRating hotelRating);
	List<Hotel> getHotelByFilter(Hotel hotel);


}
