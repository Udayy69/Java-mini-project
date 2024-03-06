package com.cybage.controller;

import java.util.List;

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

import com.cybage.bean.EventBean;
import com.cybage.bean.SportsBean;

import com.cybage.service.SportsService;

@Controller
public class SportsController {

	@Autowired
	private SportsService sportsService;

	@RequestMapping(value = "/sports", method = RequestMethod.POST)
	public ModelAndView getSportsDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In post sports details handler method inside sportsController");
		SportsBean sportsBean = new SportsBean();

		System.out.println(sportsBean);

		model.addAttribute("sports", sportsBean);

		return new ModelAndView("addsportsdetails");
	}

	@RequestMapping(path = "/addsports", method = RequestMethod.POST)
	public ModelAndView addSports(@ModelAttribute("sports") SportsBean sportsBean) {

		System.out.println("Inside Add sports Registration");

		System.out.println(sportsBean);

		boolean result = sportsService.addSports(sportsBean);

		ModelAndView modelAndView = new ModelAndView();

		if (result) {
			modelAndView.addObject("message", "Successfully");
			modelAndView.setViewName("success");
		}

		return modelAndView;
	}

	@RequestMapping(value="/displayAllSports")
	public String displayAllSports(Model model) {
		List<SportsBean> sportsList = sportsService.displayAllSports();
		model.addAttribute("sportsList",sportsList);
		if(sportsList != null && !sportsList.isEmpty()) {
			for(SportsBean sportsBean : sportsList) {
				System.out.println("Sports Id :" +sportsBean.getSportsId());
				System.out.println("Sports Name : "+sportsBean.getSportsName());
				System.out.println("Date :"+sportsBean.getDate());
				System.out.println("Location :"+sportsBean.getLocation());
				System.out.println("Price :"+sportsBean.getPrice());
				System.out.println("Sports Poster url :"+sportsBean.getSportsPosterUrl());
				
			}
		}
		return "displaySports"; //assuming displaySports.jsp already created
		
	}
	
	   //search scan
    @RequestMapping(value = "/searchSports", method = RequestMethod.GET)
	public ModelAndView searchSportsDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In search sports handler method inside MovieController");
		SportsBean sportsBean = new SportsBean();
		System.out.println(sportsBean);
		model.addAttribute("sports", sportsBean);
		return new ModelAndView("searchSports"); //assume searchEvents.jsp is already present/created
	}
    
    // search by name
 	@RequestMapping(path = "/searchSportsByName", method = RequestMethod.POST)
 	public String searchEventsByName(@RequestParam("sportsName") String sportsName, Model model) {
 		List<SportsBean> sportsList = sportsService.searchSportsByName(sportsName);
 		model.addAttribute("sportsList", sportsList);
 		if (sportsList != null && !sportsList.isEmpty()) {
 			System.out.println("<h1>All added product are :</h1>");
 			for (SportsBean sportsBean : sportsList) {
 				System.out.println("Sports Id :" +sportsBean.getSportsId());
				System.out.println("Sports Name : "+sportsBean.getSportsName());
				System.out.println("Date :"+sportsBean.getDate());
				System.out.println("Location :"+sportsBean.getLocation());
				System.out.println("Price :"+sportsBean.getPrice());
				System.out.println("Sports Poster url :"+sportsBean.getSportsPosterUrl());
 			}
 		}
 		return "searchSportsResults"; // Assuming "searchSportsResults.jsp" exists in your /WEB-INF/views/ directory
 	}
}
