package com.hotel.booking.dto;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="hotel_rating")
public class HotelRating {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int reviewId;
	@Column(name="ratings")
	private String ratings;
	@Column(name="reviews")
	private String reviews;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="hotelId_fk",referencedColumnName="hotel_id")
	private Hotel hotel;
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="userId_fk",referencedColumnName="user_id")
	private User user;


	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public String getRatings() {
		return ratings;
	}

	public void setRatings(String ratings) {
		this.ratings = ratings;
	}

	public String getReviews() {
		return reviews;
	}

	public void setReviews(String reviews) {
		this.reviews = reviews;
	}


	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "HotelRating [reviewId=" + reviewId + ", ratings=" + ratings + ", reviews=" + reviews + ", hotel="
				+ hotel + ", user=" + user + "]";
	}


}
