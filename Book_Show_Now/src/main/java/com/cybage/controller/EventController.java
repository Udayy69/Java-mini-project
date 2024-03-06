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
import com.cybage.bean.MovieBean;
import com.cybage.service.EventService;


@Controller
public class EventController {

            @Autowired
    private EventService eventService;
    
     //insert scan
    @RequestMapping (value = "/events", method = RequestMethod.POST)
    public ModelAndView geteventDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
                System.out.println("In post event details handler method inside EventController");
                EventBean eventBean = new EventBean();

                System.out.println(eventBean);

                model.addAttribute("event", eventBean);

                return new ModelAndView("addeventdetails");
    }
    
    
    //insert
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

    //display
    @RequestMapping(value = "/displayAllEvents")
	public String displayAllEvents(Model model) {
		List<EventBean> eventList = eventService.displayAllEvents();
		model.addAttribute("eventList", eventList);
		if (eventList != null && !eventList.isEmpty()) {
			System.out.println("<h1>All added product are :</h1>");
			for (EventBean eventBean : eventList) {
				System.out.println("Event Id :" + eventBean.getEventId());
				System.out.println("Event Name :" + eventBean.getEventName());
				System.out.println("City :" + eventBean.getCity());
				System.out.println("Language :" + eventBean.getLanguage());
				System.out.println("Genere :" + eventBean.getGenre());
				System.out.println("Duration :" + eventBean.getDuration());
				System.out.println("Price :" + eventBean.getPrice());
				System.out.println("Release Date :" + eventBean.getReleaseDate());
			}
		}
		return "displayEvents"; // Assuming "displayEvents.jsp" exists in your /WEB-INF/views/ directory
	}  
    
    //search scan
    @RequestMapping(value = "/searchEvent", method = RequestMethod.GET)
	public ModelAndView searchEventDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In search movie handler method inside MovieController");
		EventBean eventBean = new EventBean();
		System.out.println(eventBean);
		model.addAttribute("movie", eventBean);
		return new ModelAndView("searchEvents"); //assume searchEvents.jsp is already present/created
	}
    
 // search by name
 	@RequestMapping(path = "/searchEventsByName", method = RequestMethod.POST)
 	public String searchEventsByName(@RequestParam("eventName") String eventName, Model model) {
 		List<EventBean> eventList = eventService.searchEventsByName(eventName);
 		model.addAttribute("eventList", eventList);
 		if (eventList != null && !eventList.isEmpty()) {
 			System.out.println("<h1>All added product are :</h1>");
 			for (EventBean eventBean : eventList) {
 				System.out.println("Movie Id :" + eventBean.getEventId());
 				System.out.println("Movie Name :" + eventBean.getEventName());
 				System.out.println("City :" + eventBean.getCity());
 				System.out.println("Language :" + eventBean.getLanguage());
 				System.out.println("Genere :" + eventBean.getGenre());
 				System.out.println("Duration :" + eventBean.getDuration());
 				System.out.println("Price :" + eventBean.getPrice());
 				System.out.println("Release Date :" + eventBean.getReleaseDate());
 			}
 		}
 		return "searchEventResults"; // Assuming "searchResults.jsp" exists in your /WEB-INF/views/ directory
 	}

}
