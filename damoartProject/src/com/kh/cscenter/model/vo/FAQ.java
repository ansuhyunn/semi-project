package com.kh.cscenter.model.vo;

public class FAQ {

	private int faqNo;
	private String faqWriter;
	private String faqTitle;
	private String faqContent;
	private String createDate;
	private String fCategoryCode;
	private String status;
	
	public FAQ() {}

	public FAQ(int faqNo, String faqWriter, String faqTitle, String faqContent, String createDate, String fCategoryCode,
			String status) {
		super();
		this.faqNo = faqNo;
		this.faqWriter = faqWriter;
		this.faqTitle = faqTitle;
		this.faqContent = faqContent;
		this.createDate = createDate;
		this.fCategoryCode = fCategoryCode;
		this.status = status;
	}

	public int getFaqNo() {
		return faqNo;
	}

	public void setFaqNo(int faqNo) {
		this.faqNo = faqNo;
	}

	public String getFaqWriter() {
		return faqWriter;
	}

	public void setFaqWriter(String faqWriter) {
		this.faqWriter = faqWriter;
	}

	public String getFaqTitle() {
		return faqTitle;
	}

	public void setFaqTitle(String faqTitle) {
		this.faqTitle = faqTitle;
	}

	public String getFaqContent() {
		return faqContent;
	}

	public void setFaqContent(String faqContent) {
		this.faqContent = faqContent;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getfCategoryCode() {
		return fCategoryCode;
	}

	public void setfCategoryCode(String fCategoryCode) {
		this.fCategoryCode = fCategoryCode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "FAQ [faqNo=" + faqNo + ", faqWriter=" + faqWriter + ", faqTitle=" + faqTitle + ", faqContent="
				+ faqContent + ", createDate=" + createDate + ", fCategoryCode=" + fCategoryCode + ", status=" + status
				+ "]";
	}
	
	
}
