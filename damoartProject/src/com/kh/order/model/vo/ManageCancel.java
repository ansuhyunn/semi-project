package com.kh.order.model.vo;

import java.sql.Date;

public class ManageCancel {

   private int orderNo;
   private String orderName;
   private Date orderDate;	
   private int pNo;
   private String title;
   private String orderStatus;
   private int totalPrice;
   private int payPrice;
   private String payOpt;
   private String memId;
   
   public ManageCancel() {}

public ManageCancel(int orderNo, String orderName, Date orderDate, int pNo, String title, String orderStatus,
		int totalPrice, int payPrice, String payOpt, String memId) {
	super();
	this.orderNo = orderNo;
	this.orderName = orderName;
	this.orderDate = orderDate;
	this.pNo = pNo;
	this.title = title;
	this.orderStatus = orderStatus;
	this.totalPrice = totalPrice;
	this.payPrice = payPrice;
	this.payOpt = payOpt;
	this.memId = memId;
}

public int getOrderNo() {
	return orderNo;
}

public void setOrderNo(int orderNo) {
	this.orderNo = orderNo;
}

public String getOrderName() {
	return orderName;
}

public void setOrderName(String orderName) {
	this.orderName = orderName;
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

public String getPayOpt() {
	return payOpt;
}

public void setPayOpt(String payOpt) {
	this.payOpt = payOpt;
}

public String getMemId() {
	return memId;
}

public void setMemId(String memId) {
	this.memId = memId;
}

@Override
public String toString() {
	return "ManageCancel [orderNo=" + orderNo + ", orderName=" + orderName + ", orderDate=" + orderDate + ", pNo=" + pNo
			+ ", title=" + title + ", orderStatus=" + orderStatus + ", totalPrice=" + totalPrice + ", payPrice="
			+ payPrice + ", payOpt=" + payOpt + ", memId=" + memId + "]";
}
   
   
}
