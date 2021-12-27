package com.kh.order.model.vo;

import java.sql.Date;

public class ManageOrder {

	   private int orderNo;
	   private int totalPrice;
	   private int payPrice;
	   private Date orderDate;
	   private int pNo;
	   private String orderOpt;
	   private String orderName;
	   private int orderCount;
	   private String title;
	   private String orderStatus;
	   private String payOpt;
	   private String mainImg;
	   
public ManageOrder() {}



public ManageOrder(int totalPrice, int payPrice, Date orderDate, int orderCount, String orderStatus, String mainImg) {
	super();
	
	this.totalPrice = totalPrice;
	this.payPrice = payPrice;
	this.orderDate = orderDate;
	this.orderCount = orderCount;
	this.orderStatus = orderStatus;
	this.mainImg = mainImg;
}



public ManageOrder(int orderNo, int totalPrice, int payPrice, Date orderDate, int pNo, String orderOpt, String orderName, int orderCount,
		String title, String orderStatus, String payOpt, String mainImg) {
	super();
	this.orderNo = orderNo;
	this.totalPrice = totalPrice;
	this.payPrice = payPrice;
	this.orderDate = orderDate;
	this.pNo = pNo;
	this.orderOpt = orderOpt;
	this.orderName = orderName;
	this.orderCount = orderCount;
	this.title = title;
	this.orderStatus = orderStatus;
	this.payOpt = payOpt;
	this.mainImg = mainImg;
}

public int getOrderNo() {
	return orderNo;
}

public void setOrderNo(int orderNo) {
	this.orderNo = orderNo;
}

public int getTotalPrice() {
	return totalPrice;
}

public void setTotalPrice(int totalPrice) {
	this.totalPrice = totalPrice;
}

public int getPayPrice() {
	return payPrice;
}

public void setPayPrice(int payPrice) {
	this.payPrice = payPrice;
}

public Date getOrderDate() {
	return orderDate;
}

public void setOrderDate(Date orderDate) {
	this.orderDate = orderDate;
}

public int getpNo() {
	return pNo;
}

public void setpNo(int pNo) {
	this.pNo = pNo;
}

public String getOrderOpt() {
	return orderOpt;
}

public void setOrderOpt(String orderOpt) {
	this.orderOpt = orderOpt;
}

public String getOrderName() {
	return orderName;
}

public void setOrderName() {
	this.orderName = orderName;
}

public int getOrderCount() {
	return orderCount;
}

public void setOrderCount(int orderCount) {
	this.orderCount = orderCount;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getOrderStatus() {
	return orderStatus;
}

public void setOrderStatus(String orderStatus) {
	this.orderStatus = orderStatus;
}

public String getPayOpt() {
	return payOpt;
}

public void setPayOpt(String payOpt) {
	this.payOpt = payOpt;
}


public String getMainImg() {
	return mainImg;
}


public void setMainImg(String mainImg) {
	this.mainImg = mainImg;
}



public void setOrderName(String orderName) {
	this.orderName = orderName;
}



@Override
public String toString() {
	return "ManageOrder [orderNo=" + orderNo + ", totalPrice=" + totalPrice + ", payPrice=" + payPrice + ", orderDate="
			+ orderDate + ", pNo=" + pNo + ", orderOpt=" + orderOpt + ", orderName=" + orderName + ", orderCount="
			+ orderCount + ", title=" + title + ", orderStatus=" + orderStatus + ", payOpt=" + payOpt + ", mainImg="
			+ mainImg + "]";
}




}


