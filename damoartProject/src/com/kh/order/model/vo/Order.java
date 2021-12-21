package com.kh.order.model.vo;

import java.sql.Date;

public class Order {

	 private String title;
	 private String area;
	 private Date sDate;
	 private Date eDate;
	 private String cartOpt;
	 private int cartCount;
	 private int aPrice;
	 private int tPrice;
	 private int cPrice;
	 
	 public Order() {}

	public Order(String title, String area, Date sDate, Date eDate, String cartOpt, int cartCount, int aPrice,
			int tPrice, int cPrice) {
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

	@Override
	public String toString() {
		return "Order [title=" + title + ", area=" + area + ", sDate=" + sDate + ", eDate=" + eDate + ", cartOpt="
				+ cartOpt + ", cartCount=" + cartCount + ", aPrice=" + aPrice + ", tPrice=" + tPrice + ", cPrice="
				+ cPrice + "]";
	}
	 
	 
	 
}
