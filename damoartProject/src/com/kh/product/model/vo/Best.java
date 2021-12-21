package com.kh.product.model.vo;

public class Best {
	
	private int pNo;
	private String title;
	private String area;
	private String sDate;
	private String eDate;
	private int count;
	private String mainImg;
	
	public Best() {}

	public Best(int pNo, String title, String area, String sDate, String eDate, int count, String mainImg) {
		super();
		this.pNo = pNo;
		this.title = title;
		this.area = area;
		this.sDate = sDate;
		this.eDate = eDate;
		this.count = count;
		this.mainImg = mainImg;
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

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getsDate() {
		return sDate;
	}

	public void setsDate(String sDate) {
		this.sDate = sDate;
	}

	public String geteDate() {
		return eDate;
	}

	public void seteDate(String eDate) {
		this.eDate = eDate;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	@Override
	public String toString() {
		return "Best [pNo=" + pNo + ", title=" + title + ", area=" + area + ", sDate=" + sDate + ", eDate=" + eDate
				+ ", count=" + count + ", mainImg=" + mainImg + "]";
	}
	
}
