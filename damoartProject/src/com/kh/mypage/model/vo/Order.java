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
	   
	   private String area;
	   private String payOpt;
	   private int payPrice;
	   private String orderPhone;
	   private Date payDate;
	   
	   private String bankName;
	   private String refundAccount;
	   private String refundName;

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



public Order(int orderNo, Date orderDate, String orderName, int pNo, String pTitle, String mainImg, String orderOpt, int orderCount,
		String area, Date payDate, String payOpt, int payPrice, String orderPhone) {
	super();
	this.orderNo = orderNo;
	this.orderDate = orderDate;
	this.orderName = orderName;
	this.pNo = pNo;
	this.pTitle = pTitle;
	this.mainImg = mainImg;
	this.orderOpt = orderOpt;
	this.orderCount = orderCount;
	this.area = area;
	this.payDate = payDate;
	this.payOpt = payOpt;
	this.payPrice = payPrice;
	this.orderPhone = orderPhone;
	
}

public Order(int orderNo, Date orderDate, String orderName, int pNo, String pTitle, String mainImg, String orderOpt, int orderCount,
		String area, Date payDate, String payOpt, int payPrice, String orderPhone, String bankName, String refundAccount, String refundName) {
	super();
	this.orderNo = orderNo;
	this.orderDate = orderDate;
	this.orderName = orderName;
	this.pNo = pNo;
	this.pTitle = pTitle;
	this.mainImg = mainImg;
	this.orderOpt = orderOpt;
	this.orderCount = orderCount;
	this.area = area;
	this.payDate = payDate;
	this.payOpt = payOpt;
	this.payPrice = payPrice;
	this.orderPhone = orderPhone;
	this.bankName = bankName;
	this.refundAccount = refundAccount;
	this.refundName = refundName;
	
}

public Order(int int1, Date date, String string, int int2, String string2, String string3, String opt, int int3,
		String string4, Date date2, String payOpt2, int int4, int int5) {
	// TODO Auto-generated constructor stub
}




public String getBankName() {
	return bankName;
}

public void setBankName(String bankName) {
	this.bankName = bankName;
}

public String getRefundAccount() {
	return refundAccount;
}

public void setRefundAccount(String refundAccount) {
	this.refundAccount = refundAccount;
}



public String getRefundName() {
	return refundName;
}

public void setRefundName(String refundName) {
	this.refundName = refundName;
}

public Date getPayDate() {
	return payDate;
}

public void setPayDate(Date payDate) {
	this.payDate = payDate;
}

public String getOrderPhone() {
	return orderPhone;
}

public void setOrderPhone(String orderPhone) {
	this.orderPhone = orderPhone;
}

public String getArea() {
	return area;
}

public void setArea(String area) {
	this.area = area;
}

public String getPayOpt() {
	return payOpt;
}

public void setPayOpt(String payOpt) {
	this.payOpt = payOpt;
}

public int getPayPrice() {
	return payPrice;
}

public void setPayPrice(int payPrice) {
	this.payPrice = payPrice;
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
