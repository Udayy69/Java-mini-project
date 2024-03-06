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

import com.cybage.bean.MovieBean;
import com.cybage.service.MovieService;

@Controller
public class MovieController {

	@Autowired
	private MovieService movieService;

	@RequestMapping(path="/home",method=RequestMethod.GET)
	public ModelAndView getHomeDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In Home Page handler");
		String message="welcome";
		model.addAttribute("message", message);

		return new ModelAndView("homePage");
	}
	
	
	@RequestMapping(value = "/movies", method = RequestMethod.POST)
	public ModelAndView getMovieDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In get movie details handler method inside MovieController");
		MovieBean movieBean = new MovieBean();

		System.out.println(movieBean);

		model.addAttribute("movie", movieBean);

		return new ModelAndView("addmoviedetails");
	}

	@RequestMapping(path = "/addMovie", method = RequestMethod.POST)
	public ModelAndView addMovies(@ModelAttribute("movie") MovieBean movieBean) {

		System.out.println("Inside Add movie Registration");

		System.out.println(movieBean);

		boolean result = movieService.addMovie(movieBean);

		ModelAndView modelAndView = new ModelAndView();

		if (result) {
			modelAndView.addObject("message", "Successfully");
			modelAndView.setViewName("success");
		}

		return modelAndView;
	}

	@RequestMapping(value = "/displayAllMovies")
	public String displayAllMovies(Model model) {
		List<MovieBean> movieList = movieService.displayAllMovies();
		model.addAttribute("movieList", movieList);
		if (movieList != null && !movieList.isEmpty()) {
			System.out.println("<h1>All added product are :</h1>");
			for (MovieBean movieBean : movieList) {
				System.out.println("Movie Id :" + movieBean.getMovieId());
				System.out.println("Movie Name :" + movieBean.getMovieName());
				System.out.println("City :" + movieBean.getCity());
				System.out.println("Language :" + movieBean.getLanguage());
				System.out.println("Genere :" + movieBean.getGenre());
				System.out.println("Duration :" + movieBean.getDuration());
				System.out.println("Price :" + movieBean.getPrice());
				System.out.println("Release Date :" + movieBean.getReleaseDate());
			}
		}
		return "displayMovies"; // Assuming "displayMovies.jsp" exists in your /WEB-INF/views/ directory
	}

	// search scan
	@RequestMapping(value = "/searchMovie", method = RequestMethod.GET)
	public ModelAndView searchMovieDetails(HttpServletRequest request, HttpServletResponse response, Model model) {
		System.out.println("In search movie handler method inside MovieController");
		MovieBean movieBean = new MovieBean();
		System.out.println(movieBean);
		model.addAttribute("movie", movieBean);
		return new ModelAndView("searchMovie");
	}

	// search by name
	@RequestMapping(path = "/searchMoviesByName", method = RequestMethod.POST)
	public String searchMoviesByName(@RequestParam("movieName") String movieName, Model model) {
		List<MovieBean> movieList = movieService.searchMoviesByName(movieName);
		model.addAttribute("movieList", movieList);
		if (movieList != null && !movieList.isEmpty()) {
			System.out.println("<h1>All added product are :</h1>");
			for (MovieBean movieBean : movieList) {
				System.out.println("Movie Id :" + movieBean.getMovieId());
				System.out.println("Movie Name :" + movieBean.getMovieName());
				System.out.println("City :" + movieBean.getCity());
				System.out.println("Language :" + movieBean.getLanguage());
				System.out.println("Genere :" + movieBean.getGenre());
				System.out.println("Duration :" + movieBean.getDuration());
				System.out.println("Price :" + movieBean.getPrice());
				System.out.println("Release Date :" + movieBean.getReleaseDate());
			}
		}
		return "searchResults"; // Assuming "searchResults.jsp" exists in your /WEB-INF/views/ directory
	}

}
