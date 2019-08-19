package com.hotel.booking.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.booking.dto.Hotel;
import com.hotel.booking.dto.HotelRating;
import com.hotel.booking.service.HotelService;


@Controller
public class HotelController {

	@Autowired
	private HotelService hotelService;

	// method to return addhotel.jsp file means addhotelpage
	@RequestMapping(value="/addhotelpage",method=RequestMethod.GET)
	public String addHotelPage()
	{
		return "addhotel";
	}

	//method to return updatehotel.jsp file means updatehotelpage
	@RequestMapping(value="/updatehotelpage",method=RequestMethod.GET)
	public String updateHotelPage()
	{
		return "updatehotel";
	}
	// method to return a hotel delete page
	@RequestMapping(value = "/deletehotelpage",method = RequestMethod.GET)
	public String deleteHotelPage()
	{
		return "deletehotel";
	}

	// method to return filter hotels page
	@RequestMapping(value="/filterhotelspage",method=RequestMethod.GET)
	public String filterHotelPage()
	{
		return "filterhotels";
	}

	// method to add hotel into data base 
	// successfully added means returns homepage else addhotel page
	@RequestMapping(value="/addhotel",method=RequestMethod.POST)
	public ModelAndView  addHotel(@ModelAttribute Hotel hotel) {
		boolean result=hotelService.addHotel(hotel);
		if(result)
			return new ModelAndView("homepage");
		else
			return new ModelAndView("addhotel");
	}

	//method to update the hotel
	// successfully updated means returns homepage else updatehotel page
	@RequestMapping(value="/updatehotel",method=RequestMethod.POST)
	public ModelAndView  updateHotel(@ModelAttribute Hotel hotel ) {
		boolean result=hotelService.updateHotel(hotel);
		if(result)
			return new ModelAndView("homepage");
		else
			return new ModelAndView("updatehotel");
	}

	// method to delete a hotel information means deactivate in database
	// isAvailability in database will become 1 
	@RequestMapping(value="/deletehotel",method=RequestMethod.GET)
	public ModelAndView  deleteHotel(@RequestParam(value="hotelName",required=true) String hotelName) {
		boolean result=hotelService.deleteHotel(hotelName);
		if(result)
			return new ModelAndView("homepage");
		else
			return new ModelAndView("deletehotel");
	}

	// method to display hotels based on city ,date,no of rooms
	// after search the infromation will pass to jsp file 
	@RequestMapping(value="/gethotels",method=RequestMethod.GET)
	public ModelAndView  getHotelsByCity(@RequestParam(value="city",required=true)String name,
			@RequestParam(value="date",required=true)Date date,
			@RequestParam(value="roomsrequired",required=true)String room,HttpServletResponse resp ) throws IOException{

		int rooms=Integer.parseInt(room);
		List<Hotel> list=hotelService.getHotelsByCity(date,name,rooms);
		PrintWriter printWriter=null;

		if(list!=null)
		{
			return new ModelAndView("gethotelsbycity","list",list);
		}
		else
		{
			printWriter=resp.getWriter();
			printWriter.print("<h1>No Hotels found</h1>");
			return null;
		}
	}

	// method to add comments into database by end user
	// ratings are added means return to successrating jsp file
	@RequestMapping(value="/addratings",method=RequestMethod.POST)
	public ModelAndView  addRatings(@ModelAttribute HotelRating hotelRating,HttpServletResponse resp) throws IOException {
		boolean result=hotelService.addRating(hotelRating);
		PrintWriter printWriter=null;
		if(result)
			return new ModelAndView("successrating");
		else
		{
			printWriter=resp.getWriter();
			printWriter.print("<h1>Not Added</h1>");
			return null;
		}
	}

	// method to filter the hotels based on reqirements
	@RequestMapping(value="/filter",method=RequestMethod.GET)
	public ModelAndView  getHotelByFilter(@ModelAttribute Hotel hotel,HttpServletResponse resp) throws IOException {
		List<Hotel> list=hotelService.getHotelByFilter(hotel);
		PrintWriter out=resp.getWriter();
		if(list!=null)
		{
			out.print("<h1> Hotel Details are: </h1>");
			for (Hotel hotels : list) {
				out.print("<h3> Hotel Name: " + hotels.getHotelName() + "</h3>");
				out.print("<h3> Wifi: " + hotels.getWifi() + "</h3>");
				out.print("<h3> A/C: " + hotels.getAirConditonal() + "</h3>");
				out.print("<h3> Resturant: " + hotels.getResturant() + "</h3>");
				out.print("<h3> Phone No: " + hotels.getPhoneNo() + "</h3>");
				out.print("<h3> Meals: " + hotels.getMeals() + "</h3>");
				out.print("<h3> Email: " + hotels.getEmail() + "</h3>");
				out.print("<h3> City: " + hotels.getCity() + "</h3>");
				out.print("<h3> Price: " + hotels.getAverageRatePerNight() + "</h3>");
			}
		}
		else
			out.print("<h1> No Hotels found </h1>");
		return null;
	}
}

