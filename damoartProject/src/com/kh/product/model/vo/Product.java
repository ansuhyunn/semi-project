package com.kh.product.model.vo;

import java.sql.Date;

public class Product {

	private int pNo;
	private Date enrollDate;
	private String title;
	private String region;
	private String age;
	private String area;
	private Date sDate;
	private Date eDate;
	private String time;
	private int aPrice;
	private int tPrice;
	private int cPrice;
	private String mainImg;
	private String detailImg;
	private String etc;
	private String soldOut;
	
	
	public Product() {}

	
	public Product(int pNo, Date enrollDate, String title, String region, String age, String area, Date sDate,
			Date eDate, String time, int aPrice, int tPrice, int cPrice, String mainImg, String detailImg, String etc,
			String soldOut) {
		super();
		this.pNo = pNo;
		this.enrollDate = enrollDate;
		this.title = title;
		this.region = region;
		this.age = age;
		this.area = area;
		this.sDate = sDate;
		this.eDate = eDate;
		this.time = time;
		this.aPrice = aPrice;
		this.tPrice = tPrice;
		this.cPrice = cPrice;
		this.mainImg = mainImg;
		this.detailImg = detailImg;
		this.etc = etc;
		this.soldOut = soldOut;
	}
	
	
	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public Date getsDate() {
		return sDate;
	}

	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}

	public Date geteDate() {
		return eDate;
	}

	public void seteDate(Date eDate) {
		this.eDate = eDate;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public int getaPrice() {
		return aPrice;
	}

	public void setaPrice(int aPrice) {
		this.aPrice = aPrice;
	}

	public int gettPrice() {
		return tPrice;
	}

	public void settPrice(int tPrice) {
		this.tPrice = tPrice;
	}

	public int getcPrice() {
		return cPrice;
	}

	public void setcPrice(int cPrice) {
		this.cPrice = cPrice;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public String getDetailImg() {
		return detailImg;
	}

	public void setDetailImg(String detailImg) {
		this.detailImg = detailImg;
	}

	public String getEtc() {
		return etc;
	}

	public void setEtc(String etc) {
		this.etc = etc;
	}

	public String getSoldOut() {
		return soldOut;
	}

	public void setSoldOut(String soldOut) {
		this.soldOut = soldOut;
	}

	
	@Override
	public String toString() {
		return "Product [pNo=" + pNo + ", enrollDate=" + enrollDate + ", title=" + title + ", region=" + region
				+ ", age=" + age + ", area=" + area + ", sDate=" + sDate + ", eDate=" + eDate + ", time=" + time
				+ ", aPrice=" + aPrice + ", tPrice=" + tPrice + ", cPrice=" + cPrice + ", mainImg=" + mainImg
				+ ", detailImg=" + detailImg + ", etc=" + etc + ", soldOut=" + soldOut + "]";
	}
	
	
}//class