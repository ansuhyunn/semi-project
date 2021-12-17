package com.kh.mypage.model.vo;

import java.sql.Date;

public class Point {

	private int pointNo;
	private int memNo;
	private Date pointDate;
	private int point;
	private String pointContent;
	private int orderNo;
	private String memId;
	
	public Point() {}

	public Point(int pointNo, int memNo, Date pointDate, int point, String pointContent, int orderNo, String memId) {
		super();
		this.pointNo = pointNo;
		this.memNo = memNo;
		this.pointDate = pointDate;
		this.point = point;
		this.pointContent = pointContent;
		this.orderNo = orderNo;
		this.memId = memId;
	}

	
	public Point(Date pointDate, int point, String pointContent, int orderNo, String memId) {
		super();
		this.pointDate = pointDate;
		this.point = point;
		this.pointContent = pointContent;
		this.orderNo = orderNo;
		this.memId = memId;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public int getPointNo() {
		return pointNo;
	}

	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public Date getPointDate() {
		return pointDate;
	}

	public void setPointDate(Date pointDate) {
		this.pointDate = pointDate;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getPointContent() {
		return pointContent;
	}

	public void setPointContent(String pointContent) {
		this.pointContent = pointContent;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "Point [pointNo=" + pointNo + ", memNo=" + memNo + ", pointDate=" + pointDate + ", point=" + point
				+ ", pointContent=" + pointContent + ", orderNo=" + orderNo + "]";
	}
	
	
}
