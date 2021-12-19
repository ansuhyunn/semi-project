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

public Order() {}

public Order(int orderNo, int finalPrice, Date orderDate, int memNo, int pNo, String orderOpt, String orderName,
		String orderStatus, String pTitle) {
	super();
	this.orderNo = orderNo;
	this.finalPrice = finalPrice;
	this.orderDate = orderDate;
	this.memNo = memNo;
	this.pNo = pNo;
	this.orderOpt = orderOpt;
	this.orderName = orderName;
	this.orderStatus = orderStatus;
	this.pTitle = pTitle;
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
