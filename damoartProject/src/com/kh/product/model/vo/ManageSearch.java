package com.kh.product.model.vo;

public class ManageSearch {

	private String category;
	private String keyword;
	
	public ManageSearch() {}

	public ManageSearch(String category, String keyword) {
		super();
		this.category = category;
		this.keyword = keyword;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	@Override
	public String toString() {
		return "ManageSearch [category=" + category + ", keyword=" + keyword + "]";
	}
	
	
	
}
