package com.kh.order.model.vo;

import java.sql.Date;

public class ManageSales {

private int orderNo;
private int totalPrice;
private int finalPrice;
private Date orderDate;
private int pNo;
private String orderOpt;
private int orderCount;
private String soldout;
private String title;
private String eDate;
private String sDate;

public ManageSales() {}



public ManageSales(int orderNo, int totalPrice, int finalPrice, Date orderDate, int pNo, String orderOpt,
		int orderCount, String soldout, String title, String eDate, String sDate) {
	super();
	this.orderNo = orderNo;
	this.totalPrice = totalPrice;
	this.finalPrice = finalPrice;
	this.orderDate = orderDate;
	this.pNo = pNo;
	this.orderOpt = orderOpt;
	this.orderCount = orderCount;
	this.soldout = soldout;
	this.title = title;
	this.sDate = sDate;
	this.eDate = eDate;
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

public int getOrderCount() {
	return orderCount;
}

public void setOrderCount(int orderCount) {
	this.orderCount = orderCount;
}

public String getsoldout() {
	return soldout;
}

public void setsoldout(String soldout) {
	this.soldout = soldout;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getsDate() {
	return sDate;
}

public void setsDate() {
	this.sDate = sDate;
}

public String geteDate() {
	return eDate;
}

public void seteDate() {
	this.eDate = eDate;
}

@Override
public String toString() {
	return "ManageSales [orderNo=" + orderNo + ", totalPrice=" + totalPrice + ", finalPrice=" + finalPrice
			+ ", orderDate=" + orderDate + ", pNo=" + pNo + ", orderOpt=" + orderOpt + ", orderCount=" + orderCount
			+ ", soldout=" + soldout + ", title=" + title + ", sDate=" + sDate + ", eDate=" + eDate +  "]";
}



}


