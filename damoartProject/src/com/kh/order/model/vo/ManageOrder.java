package com.kh.order.model.vo;

import java.sql.Date;

public class ManageOrder {

private int orderNo;
private int totalPrice;
private int estPoint;
private int finalPrice;
private Date orderDate;
private int memNo;
private String orderName;
private int pNo;
private int orderCount;
private int price;
private String orderStatus;
    
public ManageOrder() {}



public ManageOrder(int orderNo, int finalPrice, Date orderDate, int memNo, String orderName, int pNo, int orderCount,
		int price, String orderStatus) {
	super();
	this.orderNo = orderNo;
	this.finalPrice = finalPrice;
	this.orderDate = orderDate;
	this.memNo = memNo;
	this.orderName = orderName;
	this.pNo = pNo;
	this.orderCount = orderCount;
	this.price = price;
	this.orderStatus = orderStatus;
}



public ManageOrder(int orderNo, int totalPrice, int estPoint, int finalPrice, Date orderDate, int memNo, String orderName,
		int pNo, int orderCount, int price, String orderStatus) {
	super();
	this.orderNo = orderNo;
	this.totalPrice = totalPrice;
	this.estPoint = estPoint;
	this.finalPrice = finalPrice;
	this.orderDate = orderDate;
	this.memNo = memNo;
	this.orderName = orderName;
	this.pNo = pNo;
	this.orderCount = orderCount;
	this.price = price;
	this.orderStatus = orderStatus;
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

public int getEstPoint() {
	return estPoint;
}

public void setEstPoint(int estPoint) {
	this.estPoint = estPoint;
}

public int getfinalPrice() {
	return finalPrice;
}

public void setfinalPrice(int finalPrice) {
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

public String getOrderName() {
	return orderName;
}

public void setOrderName(String orderName) {
	this.orderName = orderName;
}

public int getpNo() {
	return pNo;
}

public void setpNo(int pNo) {
	this.pNo = pNo;
}

public int getOrderCount() {
	return orderCount;
}

public void setOrderCount(int orderCount) {
	this.orderCount = orderCount;
}

public int getPrice() {
	return price;
}

public void setPrice(int price) {
	this.price = price;
}

public String getorderStatus() {
	return orderStatus;
}

public void setorderStatus(String orderStatus) {
	this.orderStatus = orderStatus;
}

@Override
public String toString() {
	return "ManageOrder [orderNo=" + orderNo + ", totalPrice=" + totalPrice + ", estPoint=" + estPoint + ", finalPrice="
			+ finalPrice + ", orderDate=" + orderDate + ", memNo=" + memNo + ", orderName=" + orderName + ", pNo=" + pNo
			+ ", orderCount=" + orderCount + ", price=" + price + ", orderStatus=" + orderStatus + "]";
}


}


