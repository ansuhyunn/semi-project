package com.kh.cscenter.model.vo;

public class Guide {

	private int guideNo;
	private String guideWriter;
	private String guideTitle;
	private String guideContent;
	private String createDate;
	private String status;
	
	public Guide () {}

	public Guide(int guideNo, String guideWriter, String guideTitle, String guideContent, String createDate,
			String status) {
		super();
		this.guideNo = guideNo;
		this.guideWriter = guideWriter;
		this.guideTitle = guideTitle;
		this.guideContent = guideContent;
		this.createDate = createDate;
		this.status = status;
	}

	public Guide(int guideNo, String guideWriter, String guideTitle, String createDate, String status) {
		super();
		this.guideNo = guideNo;
		this.guideWriter = guideWriter;
		this.guideTitle = guideTitle;
		this.createDate = createDate;
		this.status = status;
	}

	public int getGuideNo() {
		return guideNo;
	}

	public void setGuideNo(int guideNo) {
		this.guideNo = guideNo;
	}

	public String getGuideWriter() {
		return guideWriter;
	}

	public void setGuideWriter(String guideWriter) {
		this.guideWriter = guideWriter;
	}

	public String getGuideTitle() {
		return guideTitle;
	}

	public void setGuideTitle(String guideTitle) {
		this.guideTitle = guideTitle;
	}

	public String getGuideContent() {
		return guideContent;
	}

	public void setGuideContent(String guideContent) {
		this.guideContent = guideContent;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Guide [guideNo=" + guideNo + ", guideWriter=" + guideWriter + ", guideTitle=" + guideTitle
				+ ", guideContent=" + guideContent + ", createDate=" + createDate + ", status=" + status + "]";
	}
	
	
}
