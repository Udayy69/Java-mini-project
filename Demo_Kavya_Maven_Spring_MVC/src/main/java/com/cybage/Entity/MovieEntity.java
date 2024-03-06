package com.cybage.Entity;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MovieEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int movieId;
	private String movieName;
	private String city;
	private String language;
	private String genre;
	private  int  duration;
	private String releaseDate;
	private double price;
	private String posterURL;
	
	

	public MovieEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	



	public MovieEntity(int movieId, String movieName, String city, String language, String genre, int duration,
			String releaseDate, double price, String posterURL) {
		super();
		this.movieId = movieId;
		this.movieName = movieName;
		this.city = city;
		this.language = language;
		this.genre = genre;
		this.duration = duration;
		this.releaseDate = releaseDate;
		this.price = price;
		this.posterURL = posterURL;
	}





	public int getMovieId() {
		return movieId;
	}



	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}



	public String getMovieName() {
		return movieName;
	}



	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public String getLanguage() {
		return language;
	}



	public void setLanguage(String language) {
		this.language = language;
	}



	public String getGenre() {
		return genre;
	}



	public void setGenre(String genre) {
		this.genre = genre;
	}



	public int getDuration() {
		return duration;
	}



	public void setDuration(int duration) {
		this.duration = duration;
	}



	public String getReleaseDate() {
		return releaseDate;
	}



	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}



	public double getPrice() {
		return price;
	}



	public void setPrice(double price) {
		this.price = price;
	}



	public String getPosterURL() {
		return posterURL;
	}



	public void setPosterURL(String posterURL) {
		this.posterURL = posterURL;
	}





	@Override
	public String toString() {
		return "MovieEntity [movieId=" + movieId + ", movieName=" + movieName + ", city=" + city + ", language="
				+ language + ", genre=" + genre + ", duration=" + duration + ", releaseDate=" + releaseDate + ", price="
				+ price + ", posterURL=" + posterURL + "]";
	}


	

}