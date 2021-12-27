package com.kh.product.model.vo;

public class Search {
	
	private String searchDate;
	private String searchLocation;
	private String searchPrice;
	private String searchAge;
	
	public Search(){}

	public Search(String searchDate, String searchLocation, String searchPrice, String searchAge) {
		super();
		this.searchDate = searchDate;
		this.searchLocation = searchLocation;
		this.searchPrice = searchPrice;
		this.searchAge = searchAge;
	}
	
	

	public String getSearchDate() {
		return searchDate;
	}

	public void setSearchDate(String searchDate) {
		this.searchDate = searchDate;
	}

	public String getSearchLocation() {
		return searchLocation;
	}

	public void setSearchLocation(String searchLocation) {
		this.searchLocation = searchLocation;
	}

	public String getSearchPrice() {
		return searchPrice;
	}

	public void setSearchPrice(String searchPrice) {
		this.searchPrice = searchPrice;
	}

	public String getSearchAge() {
		return searchAge;
	}

	public void setSearchAge(String searchAge) {
		this.searchAge = searchAge;
	}

	@Override
	public String toString() {
		return "Search [searchDate=" + searchDate + ", searchLocation=" + searchLocation + ", searchPrice="
				+ searchPrice + ", searchAge=" + searchAge + "]";
	}
	
} //class
