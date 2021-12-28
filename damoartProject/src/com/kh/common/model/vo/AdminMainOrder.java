package com.kh.common.model.vo;

public class AdminMainOrder {

	private int orderNo;
	private int memNo;
	private String memId;
	private String memName;
	private String orderDate;
	private int totalPrice;
	private String orderStatus;
	
	public AdminMainOrder() {}

	public AdminMainOrder(int orderNo, int memNo, String memId, String memName, String orderDate, int totalPrice,
			String orderStatus) {
		super();
		this.orderNo = orderNo;
		this.memNo = memNo;
		this.memId = memId;
		this.memName = memName;
		this.orderDate = orderDate;
		this.totalPrice = totalPrice;
		this.orderStatus = orderStatus;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	@Override
	public String toString() {
		return "AdminMainOrder [orderNo=" + orderNo + ", memNo=" + memNo + ", memId=" + memId + ", memName=" + memName
				+ ", orderDate=" + orderDate + ", totalPrice=" + totalPrice + ", orderStatus=" + orderStatus + "]";
	}
	
	
	
}
