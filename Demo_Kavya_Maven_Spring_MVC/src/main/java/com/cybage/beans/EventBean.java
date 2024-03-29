package com.cybage.beans;

public class EventBean {
	
	private int eventId;
	private String eventName;
	private String language;
	private String city;
	private String genre;
	private int duration;
	private String releaseDate;
	private double price;
	private String eventPosterUrl;
	
	
	
	public EventBean() {
		super();
		// TODO Auto-generated constructor stub
	}



	public EventBean(int eventId, String eventName, String language, String city, String genre, int duration,
			String releaseDate, double price, String eventPosterUrl) {
		super();
		this.eventId = eventId;
		this.eventName = eventName;
		this.language = language;
		this.city = city;
		this.genre = genre;
		this.duration = duration;
		this.releaseDate = releaseDate;
		this.price = price;
		this.eventPosterUrl = eventPosterUrl;
	}



	public int getEventId() {
		return eventId;
	}



	public void setEventId(int eventId) {
		this.eventId = eventId;
	}



	public String getEventName() {
		return eventName;
	}



	public void setEventName(String eventName) {
		this.eventName = eventName;
	}



	public String getLanguage() {
		return language;
	}



	public void setLanguage(String language) {
		this.language = language;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
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



	public String getEventPosterUrl() {
		return eventPosterUrl;
	}



	public void setEventPosterUrl(String eventPosterUrl) {
		this.eventPosterUrl = eventPosterUrl;
	}



	@Override
	public String toString() {
		return "EventBean [eventId=" + eventId + ", eventName=" + eventName + ", language=" + language + ", city="
				+ city + ", genre=" + genre + ", duration=" + duration + ", releaseDate=" + releaseDate + ", price="
				+ price + ", eventPosterUrl=" + eventPosterUrl + "]";
	}
	
	
	
	
	
	
	

}
