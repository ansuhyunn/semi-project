package com.kh.member.model.vo;

import java.sql.Date;

public class Point {
	
	private int poiNo; 
	private int memNo;
	private Date poiDate;
	private int poiPoint; // 적립액/차감액
	private String poiContent; 
	private int orderNo;
	
	public Point() {}
	
	public Point(int poiNo, int memNo, Date poiDate, int poiPoint, String poiContent, int orderNo) {
		super();
		this.poiNo = poiNo;
		this.memNo = memNo;
		this.poiDate = poiDate;
		this.poiPoint = poiPoint;
		this.poiContent = poiContent;
		this.orderNo = orderNo;
	}
	
	public Point(int memNo, Date poiDate, int poiPoint, String poiContent) {
		super();
		this.memNo = memNo;
		this.poiDate = poiDate;
		this.poiPoint = poiPoint;
		this.poiContent = poiContent;
	}

	public int getPoiNo() {
		return poiNo;
	}

	public void setPoiNo(int poiNo) {
		this.poiNo = poiNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public Date getPoiDate() {
		return poiDate;
	}

	public void setPoiDate(Date poiDate) {
		this.poiDate = poiDate;
	}

	public int getPoiPoint() {
		return poiPoint;
	}

	public void setPoiPoint(int poiPoint) {
		this.poiPoint = poiPoint;
	}

	public String getPoiContent() {
		return poiContent;
	}

	public void setPoiContent(String poiContent) {
		this.poiContent = poiContent;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "Point [poiNo=" + poiNo + ", memNo=" + memNo + ", poiDate=" + poiDate + ", poiPoint=" + poiPoint
				+ ", poiContent=" + poiContent + ", orderNo=" + orderNo + "]";
	}
	
	
	
	

}
