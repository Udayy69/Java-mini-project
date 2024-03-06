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

import com.cybage.beans.MovieBean;
import com.cybage.beans.SportsBean;

import com.cybage.service.SportsService;

@Controller
public class SportsController {
	
	
	 @Autowired
	    private SportsService sportsService;
	    
	    @RequestMapping (value = "/sports", method = RequestMethod.POST)
	    public ModelAndView getSportsDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
	                System.out.println("In post sports details handler method inside sportsController");
	                SportsBean sportsBean = new SportsBean();

	                System.out.println(sportsBean);

	                model.addAttribute("sports", sportsBean);

	                return new ModelAndView("addsportsdetails");
	    }
	    
	    @RequestMapping(path = "/addsports",method = RequestMethod.POST)
	    public ModelAndView addSports(@ModelAttribute("sports") SportsBean sportsBean) {

	                System.out.println("Inside Add sports Registration");

	                System.out.println(sportsBean);

	                boolean result = sportsService.addSports(sportsBean);

	                ModelAndView modelAndView = new ModelAndView();

	                if(result) {
	                            modelAndView.addObject("message", "Successfully");
	                            modelAndView.setViewName("success");
	                }

	                return modelAndView;
	    }

	    
	    @RequestMapping (value = "/deletesports", method = RequestMethod.POST)
	    public ModelAndView deleteDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
	                System.out.println("In post delete movie details handler method inside MovieController");
	                SportsBean sportsBean = new SportsBean();

	                System.out.println(sportsBean);

	                model.addAttribute("sports", sportsBean);

	                return new ModelAndView("deletesportsdetails");
	    }
	    
	    @RequestMapping(path = "/deleteSport", method = RequestMethod.POST)
	    public ModelAndView deleteSport(@RequestParam("sportsId") int sportsId) {
	        System.out.println("Inside Delete Sports");
	        
	        boolean result = sportsService.deleteSport(sportsId);
	        
	        
	        ModelAndView modelAndView = new ModelAndView();
	           if(result) {
	            modelAndView.addObject("message", "sport deleted successfully");
	            modelAndView.setViewName("success");
	           }else {
	        	   modelAndView.addObject("message", "sport not deleted");
	        	   modelAndView.setViewName("error");
	           }
	          
	        
	        return modelAndView;
	    }


}
