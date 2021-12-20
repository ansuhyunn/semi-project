package com.kh.mypage.model.vo;

import java.sql.Date;

public class Order {
	
	   private int orderNo;
	   private int finalPrice;
	   private Date orderDate;
	   private int memNo;
	   private int pNo;
	   private String orderOpt; // 연령
	   private String orderName;
	   private String orderStatus;
	   private String pTitle;
	   private int orderCount;
	   private String mainImg;

public Order() {}

public Order(int memNo, int orderNo, int finalPrice, Date orderDate, int pNo, String pTitle, String mainImg, String orderOpt, int orderCount,
		String orderStatus) {
	super();
	this.memNo = memNo;
	this.orderNo = orderNo;
	this.finalPrice = finalPrice;
	this.orderDate = orderDate;
	this.pNo = pNo;
	this.pTitle = pTitle;
	this.mainImg = mainImg;
	this.orderOpt = orderOpt;
	this.orderCount = orderCount;
	this.orderStatus = orderStatus;
	
}



public int getOrderCount() {
	return orderCount;
}

public void setOrderCount(int orderCount) {
	this.orderCount = orderCount;
}

public String getMainImg() {
	return mainImg;
}

public void setMainImg(String mainImg) {
	this.mainImg = mainImg;
}

public int getOrderNo() {
	return orderNo;
}

public void setOrderNo(int orderNo) {
	this.orderNo = orderNo;
}

public int getFinalPrice() {
	return finalPrice;
}

public void setFinalPrice(int finalPrice) {
	this.finalPrice = finalPrice;
}

public Date getOrderDate() {
	return orderDate;
}

public void setOrderDate(Date orderDate) {
	this.orderDate = orderDate;
}

public int getMemNo() {
	return memNo;
}

public void setMemNo(int memNo) {
	this.memNo = memNo;
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

public void setOrderName(String orderName) {
	this.orderName = orderName;
}

public String getOrderStatus() {
	return orderStatus;
}

public void setOrderStatus(String orderStatus) {
	this.orderStatus = orderStatus;
}

public String getpTitle() {
	return pTitle;
}

public void setpTitle(String pTitle) {
	this.pTitle = pTitle;
}

@Override
public String toString() {
	return "Order [orderNo=" + orderNo + ", finalPrice=" + finalPrice + ", orderDate=" + orderDate + ", memNo=" + memNo
			+ ", pNo=" + pNo + ", orderOpt=" + orderOpt + ", orderName=" + orderName + ", orderStatus=" + orderStatus
			+ ", pTitle=" + pTitle + "]";
}


	
	

}
