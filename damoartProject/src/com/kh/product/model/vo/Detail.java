package com.kh.product.model.vo;

public class Detail {
	
	private String detail;
	
	public Detail(){}

	public Detail(String detail) {
		super();
		this.detail = detail;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Override
	public String toString() {
		return "Detail [detail=" + detail + "]";
	}
	
	
	
}
