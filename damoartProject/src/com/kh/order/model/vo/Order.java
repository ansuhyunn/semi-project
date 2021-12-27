package com.kh.order.model.vo;

import java.util.Date;

public class Order {

	 private String title;
	 private String area;
	 private String sDate;
	 private String eDate;
	 private String cartOpt;
	 private int cartCount;
	 private int aPrice;
	 private int tPrice;
	 private int cPrice;
	 private String memName;
	 private String phone;
	 private String email;
	 private int memNo;
	 private int payNo;
	 private int payPrice;
	 private int orderNo;
	 private Date payDate;
	 private String mainImg;
	 private int poiPoint;
	 
	 
	 public Order() {}


	public Order(String title, String area, String sDate, String eDate, String cartOpt, int cartCount, int aPrice,
			int tPrice, int cPrice, String memName, String phone, String email, int memNo, int payNo, int payPrice,
			int orderNo, Date payDate, String mainImg, int poiPoint) {
		super();
		this.title = title;
		this.area = area;
		this.sDate = sDate;
		this.eDate = eDate;
		this.cartOpt = cartOpt;
		this.cartCount = cartCount;
		this.aPrice = aPrice;
		this.tPrice = tPrice;
		this.cPrice = cPrice;
		this.memName = memName;
		this.phone = phone;
		this.email = email;
		this.memNo = memNo;
		this.payNo = payNo;
		this.payPrice = payPrice;
		this.orderNo = orderNo;
		this.payDate = payDate;
		this.mainImg = mainImg;
		this.poiPoint = poiPoint;
	}


	public Order(String title, String area, String sDate, String eDate, String cartOpt, int cartCount, int aPrice,
			int tPrice, int cPrice, String memName, String phone, String email, int memNo, String mainImg, int poiPoint) {
		super();
		this.title = title;
		this.area = area;
		this.sDate = sDate;
		this.eDate = eDate;
		this.cartOpt = cartOpt;
		this.cartCount = cartCount;
		this.aPrice = aPrice;
		this.tPrice = tPrice;
		this.cPrice = cPrice;
		this.memName = memName;
		this.phone = phone;
		this.email = email;
		this.memNo = memNo;
		this.mainImg = mainImg;
		this.poiPoint= poiPoint;
	}


	public Order(String title, String memName, int memNo, int payNo, int payPrice, int orderNo, Date payDate) {
		super();
		this.title = title;
		this.memName = memName;
		this.memNo = memNo;
		this.payNo = payNo;
		this.payPrice = payPrice;
		this.orderNo = orderNo;
		this.payDate = payDate;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getArea() {
		return area;
	}


	public void setArea(String area) {
		this.area = area;
	}


	public String getsDate() {
		return sDate;
	}


	public void setsDate(String sDate) {
		this.sDate = sDate;
	}


	public String geteDate() {
		return eDate;
	}


	public void seteDate(String eDate) {
		this.eDate = eDate;
	}


	public String getCartOpt() {
		return cartOpt;
	}


	public void setCartOpt(String cartOpt) {
		this.cartOpt = cartOpt;
	}


	public int getCartCount() {
		return cartCount;
	}


	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
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


	public String getMemName() {
		return memName;
	}


	public void setMemName(String memName) {
		this.memName = memName;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getMemNo() {
		return memNo;
	}


	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}


	public int getPayNo() {
		return payNo;
	}


	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}


	public int getPayPrice() {
		return payPrice;
	}


	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}


	public int getOrderNo() {
		return orderNo;
	}


	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}


	public Date getPayDate() {
		return payDate;
	}


	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}


	public String getMainImg() {
		return mainImg;
	}


	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

 
	
	public int getPoiPoint() {
		return poiPoint;
	}


	public void setPoiPoint(int poiPoint) {
		this.poiPoint = poiPoint;
	}


	@Override
	public String toString() {
		return "Order [title=" + title + ", area=" + area + ", sDate=" + sDate + ", eDate=" + eDate + ", cartOpt="
				+ cartOpt + ", cartCount=" + cartCount + ", aPrice=" + aPrice + ", tPrice=" + tPrice + ", cPrice="
				+ cPrice + ", memName=" + memName + ", phone=" + phone + ", email=" + email + ", memNo=" + memNo
				+ ", payNo=" + payNo + ", payPrice=" + payPrice + ", orderNo=" + orderNo + ", payDate=" + payDate
				+ ", mainImg=" + mainImg + ", poiPoint=" + poiPoint + ", getTitle()=" + getTitle() + ", getArea()="
				+ getArea() + ", getsDate()=" + getsDate() + ", geteDate()=" + geteDate() + ", getCartOpt()="
				+ getCartOpt() + ", getCartCount()=" + getCartCount() + ", getaPrice()=" + getaPrice()
				+ ", gettPrice()=" + gettPrice() + ", getcPrice()=" + getcPrice() + ", getMemName()=" + getMemName()
				+ ", getPhone()=" + getPhone() + ", getEmail()=" + getEmail() + ", getMemNo()=" + getMemNo()
				+ ", getPayNo()=" + getPayNo() + ", getPayPrice()=" + getPayPrice() + ", getOrderNo()=" + getOrderNo()
				+ ", getPayDate()=" + getPayDate() + ", getMainImg()=" + getMainImg() + ", getPoiPoint()="
				+ getPoiPoint() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}



	 
}