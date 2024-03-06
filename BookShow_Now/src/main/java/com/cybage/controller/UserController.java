package com.cybage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cybage.bean.UserBean;
import com.cybage.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/add-User", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getUserDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In get user details handler method inside UserController");
		UserBean userBean = new UserBean();
		System.out.println(userBean);
		model.addAttribute("user", userBean);
		return new ModelAndView("AddUser");
	}

	@RequestMapping(path = "/addUserProcess", method = RequestMethod.POST)
	public ModelAndView addUsers(@ModelAttribute("user") UserBean userBean) {
		System.out.println("Inside Add user Registration");
		System.out.println(userBean);
		boolean result = userService.addUser(userBean);
		ModelAndView modelAndView = new ModelAndView();
		if (result) {
			modelAndView.addObject("message", "Successfully");
			modelAndView.setViewName("Success");
		}
		return modelAndView;
	}

	@RequestMapping(value = "/Login", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getLoginDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In get user details handler method inside UserController");
		UserBean userBean = new UserBean();
		System.out.println(userBean);
		model.addAttribute("user", userBean);
		return new ModelAndView("Login");
	}

	@RequestMapping(value = "/userLoginProcess", method = RequestMethod.POST)
	public ModelAndView userLogin(@RequestParam("username") String username,
			@RequestParam("password") String password) {
		System.out.println("In userLogin process");
		System.out.println("Welcome " + username);
		return new ModelAndView("Home");
	}

	@RequestMapping(value = "/adminLoginProcess", method = RequestMethod.POST)
	public ModelAndView adminLogin(@RequestParam("adminUsername") String adminUsername,
			@RequestParam("adminPassword") String adminPassword) {
		System.out.println("In adminLogin process");
		System.out.println("Welcome " + adminUsername);
		return new ModelAndView("AdminHome");
	}

	@RequestMapping(value = "/add-user-login", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getLoginUserDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In get user details handler method inside UserController");
		UserBean userBean = new UserBean();
		System.out.println(userBean);
		model.addAttribute("user", userBean);
		return new ModelAndView("UserLogin");
	}

	@RequestMapping(value = "/add-admin-login", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView getAdminUserDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In get user details handler method inside UserController");
		UserBean userBean = new UserBean();
		System.out.println(userBean);
		model.addAttribute("user", userBean);
		return new ModelAndView("AdminLogin");
	}
}
