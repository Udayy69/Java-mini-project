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
import com.cybage.service.MovieService;

@Controller
public class MovieController {

	
    @Autowired
    private MovieService movieService;
    
    @RequestMapping (value = "/movies", method = RequestMethod.POST)
    public ModelAndView getMovieDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
                System.out.println("In post movie details handler method inside MovieController");
                MovieBean movieBean = new MovieBean();

                System.out.println(movieBean);

                model.addAttribute("movie", movieBean);

                return new ModelAndView("addmoviedetails");
    }
    
    
    @RequestMapping(path = "/addMovie",method = RequestMethod.POST)
    public ModelAndView addMovies(@ModelAttribute("movie") MovieBean movieBean) {

                System.out.println("Inside Add movie Registration");

                System.out.println(movieBean);

                boolean result = movieService.addMovie(movieBean);

                ModelAndView modelAndView = new ModelAndView();

                if(result) {
                            modelAndView.addObject("message", "Successfully");
                            modelAndView.setViewName("success");
                }

                return modelAndView;
    }
    
    @RequestMapping (value = "/deletemovies", method = RequestMethod.POST)
    public ModelAndView deleteDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
                System.out.println("In post delete movie details handler method inside MovieController");
                MovieBean movieBean = new MovieBean();

                System.out.println(movieBean);

                model.addAttribute("movie", movieBean);

                return new ModelAndView("deletemoviedetails");
    }
    
    @RequestMapping(path = "/deleteMovie", method = RequestMethod.POST)
    public ModelAndView deleteEvent(@RequestParam("movieId") int movieId) {
        System.out.println("Inside Delete Movie");
        
        boolean result = movieService.deleteMovie(movieId);
        
        
        ModelAndView modelAndView = new ModelAndView();
           if(result) {
            modelAndView.addObject("message", "movie deleted successfully");
            modelAndView.setViewName("success");
           }else {
        	   modelAndView.addObject("message", "movie not deleted");
        	   modelAndView.setViewName("error");
           }
          
     
        return modelAndView;
    }

}
