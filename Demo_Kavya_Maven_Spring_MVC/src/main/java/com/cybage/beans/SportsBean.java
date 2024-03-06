package com.cybage.beans;

public class SportsBean {
	private int sportsId;
	private String sportsName;
	private String date;
	private String location;
	private double price;
	private String sportsPosterUrl;
	
	public SportsBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SportsBean(int sportsId, String sportsName, String date, String location, double price,
			String sportsPosterUrl) {
		super();
		this.sportsId = sportsId;
		this.sportsName = sportsName;
		this.date = date;
		this.location = location;
		this.price = price;
		this.sportsPosterUrl = sportsPosterUrl;
	}

	public int getSportsId() {
		return sportsId;
	}

	public void setSportsId(int sportsId) {
		this.sportsId = sportsId;
	}

	public String getSportsName() {
		return sportsName;
	}

	public void setSportsName(String sportsName) {
		this.sportsName = sportsName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getSportsPosterUrl() {
		return sportsPosterUrl;
	}

	public void setSportsPosterUrl(String sportsPosterUrl) {
		this.sportsPosterUrl = sportsPosterUrl;
	}

	@Override
	public String toString() {
		return "SportsBean [sportsId=" + sportsId + ", sportsName=" + sportsName + ", date=" + date + ", location="
				+ location + ", price=" + price + ", sportsPosterUrl=" + sportsPosterUrl + "]";
	}
	
	
	
	
	
	
	
	
	
	
	

}
