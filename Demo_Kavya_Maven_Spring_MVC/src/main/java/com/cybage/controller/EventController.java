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

import com.cybage.beans.EventBean;
import com.cybage.beans.MovieBean;
import com.cybage.service.EventService;


@Controller
public class EventController {

	@Autowired
    private EventService eventService;
    
    @RequestMapping (value = "/events", method = RequestMethod.POST)
    public ModelAndView getMovieDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
                System.out.println("In post event details handler method inside EventController");
                EventBean eventBean = new EventBean();

                System.out.println(eventBean);

                model.addAttribute("event", eventBean);

                return new ModelAndView("addeventdetails");
    }
    
    
    
    @RequestMapping(path = "/addEvent",method = RequestMethod.POST)
    public ModelAndView addEvents(@ModelAttribute("event") EventBean eventBean) {

                System.out.println("Inside Add event Registration");

                System.out.println(eventBean);

                boolean result = eventService.addEvent(eventBean);

                ModelAndView modelAndView = new ModelAndView();

                if(result) {
                            modelAndView.addObject("message", "Successfully");
                            modelAndView.setViewName("success");
                }

                return modelAndView;
    }

    @RequestMapping (value = "/deleteevents", method = RequestMethod.POST)
    public ModelAndView deleteDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
                System.out.println("In post delete event details handler method inside MovieController");
                EventBean eventBean = new EventBean();

                System.out.println(eventBean);

                model.addAttribute("event", eventBean);

                return new ModelAndView("deleteeventdetails");
    }
    
    @RequestMapping(path = "/deleteEvent", method = RequestMethod.POST)
    public ModelAndView deleteEvent(@RequestParam("eventId") int eventId) {
        System.out.println("Inside Delete Movie");
        
        boolean result = eventService.deleteEvent(eventId);
        
        
        ModelAndView modelAndView = new ModelAndView();
           if(result) {
            modelAndView.addObject("message", "event deleted successfully");
            modelAndView.setViewName("success");
           }else {
        	   modelAndView.addObject("message", "event not deleted");
        	   modelAndView.setViewName("error");
           }
          
        
        return modelAndView;
    }
	
}
