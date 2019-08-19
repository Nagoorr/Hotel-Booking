package com.hotel.booking.dto;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.mysql.jdbc.Blob;

@Entity
@Table(name="hotel")
public class Hotel {

	@Id @Column(name="hotel_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int hotelId;
	@Column(name="hotel_name")
	private String hotelName;
	@Column(name="city")
	private String city;
	@Column(name="address")
	private String address;
	@Column(name="resturant")
	private String resturant;
	@Column(name="avg_rate_pernight")
	private String averageRatePerNight;
	@Column(name="phone_no")
	private String phoneNo;
	@Column(name="air_conditional")
	private String airConditonal;
	@Column(name="meals")
	private String meals;
	@Column(name="email")
	private String email;
	@Column(name="wifi")
	private String wifi;
	@Column(name="no_of_rooms")
	private int noOfRooms;
	@Column(name="is_available")
	private String isAvailabilty;
	@Column(name="is_active")
	private int isActive;
	
	
	
	
	public int getIsActive() {
		return isActive;
	}
	public void setIsActive(int isActive) {
		this.isActive = isActive;
	}
	public int getHotelId() {
		return hotelId;
	}
	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getResturant() {
		return resturant;
	}
	public void setResturant(String resturant) {
		this.resturant = resturant;
	}
	public String getAverageRatePerNight() {
		return averageRatePerNight;
	}
	public void setAverageRatePerNight(String averageRatePerNight) {
		this.averageRatePerNight = averageRatePerNight;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getAirConditonal() {
		return airConditonal;
	}
	public void setAirConditonal(String airConditonal) {
		this.airConditonal = airConditonal;
	}
	public String getMeals() {
		return meals;
	}
	public void setMeals(String meals) {
		this.meals = meals;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWifi() {
		return wifi;
	}
	public void setWifi(String wifi) {
		this.wifi = wifi;
	}
	public int getNoOfRooms() {
		return noOfRooms;
	}
	public void setNoOfRooms(int noOfRooms) {
		this.noOfRooms = noOfRooms;
	}
	public String getIsAvailabilty() {
		return isAvailabilty;
	}
	public void setIsAvailabilty(String isAvailabilty) {
		this.isAvailabilty = isAvailabilty;
	}
	@Override
	public String toString() {
		return "Hotel [hotelId=" + hotelId + ", hotelName=" + hotelName + ", city=" + city + ", address=" + address
				+ ", resturant=" + resturant + ", averageRatePerNight=" + averageRatePerNight + ", phoneNo=" + phoneNo
				+ ", airConditonal=" + airConditonal + ", meals=" + meals + ", email=" + email + ", wifi=" + wifi
				+ ", noOfRooms=" + noOfRooms + ", isAvailabilty=" + isAvailabilty + ", isActive=" + isActive
				+ "]";
	}
	
	
	
	
	
	}

