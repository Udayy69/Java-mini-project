package com.cybage.bean;

public class MovieBean {
	private int movieId;
	private String movieName;
	private String city;
	private String language;
	private String genre;
	private int duration;
	private String releaseDate;
	private double price;
	private String posterUrl;

	public MovieBean() {
		super();
// TODO Auto-generated constructor stub
	}

	public MovieBean(int movieId, String movieName, String city, String language, String genre, int duration,
			String releaseDate, double price, String posterUrl) {
		super();
		this.movieId = movieId;
		this.movieName = movieName;
		this.city = city;
		this.language = language;
		this.genre = genre;
		this.duration = duration;
		this.releaseDate = releaseDate;
		this.price = price;
		this.posterUrl = posterUrl;
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

	public String getPosterUrl() {
		return posterUrl;
	}

	public void setPosterUrl(String posterUrl) {
		this.posterUrl = posterUrl;
	}

	@Override
	public String toString() {
		return "MovieBean [movieId=" + movieId + ", movieName=" + movieName + ", city=" + city + ", language="
				+ language + ", genre=" + genre + ", duration=" + duration + ", releaseDate=" + releaseDate + ", price="
				+ price + ", posterUrl=" + posterUrl + "]";
	}
}
