package com.hotel.booking.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.hotel.booking.dto.User;
import com.hotel.booking.service.UserService;



// class regarding user register/login/update/delete
@Controller
public class UserController {

	@Autowired
	private UserService userService;

	// method to return login.jsp page
	@RequestMapping(value="/loginpage",method=RequestMethod.GET)
	public String loginPage()
	{
		return "login";
	}

	//method to return a register.jsp file
	@RequestMapping(value="/registerpage",method=RequestMethod.GET)
	public String registerPage()
	{
		return "register";
	}

	//method to return a home page or welcome page
	@RequestMapping(value="/homepage",method=RequestMethod.GET)
	public String homePage()
	{
		return "homepage";
	}

	//method to return a user update page 
	@RequestMapping(value="/userupdatepage",method=RequestMethod.GET)
	public String updatePage()
	{
		return "update";
	}

	//method to return a user delete page 
	@RequestMapping(value = "/deleteuserpage",method = RequestMethod.GET)
	public String deleteUser()
	{
		return "deleteuser";
	}

	// method to register the user details and save to database
	//register success means it will return login else register page
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public ModelAndView  registerUser(@ModelAttribute User user) {
		boolean result=userService.register(user);
		if(result)
			return new ModelAndView("login");
		else
			return new ModelAndView("register");
	}


	// method to login the user based on the username and password and checks for user active
	// method returns homepage if username and password is correct else login page
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView  loginUser(@ModelAttribute User user) {
		User users=userService.login(user);
		if(users!=null)
			return new ModelAndView("homepage");
		else
			return new ModelAndView("login");
	}

	// method for user update
	// update success means method returns homepage else update page
	@RequestMapping(value="/userupdate",method=RequestMethod.POST)
	public ModelAndView userUpdate(User user)
	{
		boolean users=userService.update(user);
		if(users)
			return new ModelAndView("homepage");
		else
			return new ModelAndView("update");

	}

	// method to delete information of user means deactive from database
	//after deactive in database isActive will become as 1
	@RequestMapping(value="/deleteuser",method=RequestMethod.POST)
	public ModelAndView deleteUser(@RequestParam("userName") String name,@RequestParam("password") String password) {
		boolean result=userService.deleteUser(name,password);
		if(result)
			return new ModelAndView("homepage");
		else
			return new ModelAndView("deleteuser");
	}
}
