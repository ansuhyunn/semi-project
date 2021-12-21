package com.kh.product.model.vo;

public class Qna {
	
	private int pno;
	private String qCategoryCode;
	private String qTitle;
	private String qWriter;
	private String createDate;
	
	public Qna(){}

	public Qna(int pno, String qCategoryCode, String qTitle, String qWriter, String createDate) {
		super();
		this.pno = pno;
		this.qCategoryCode = qCategoryCode;
		this.qTitle = qTitle;
		this.qWriter = qWriter;
		this.createDate = createDate;
	}

	public int getPno() {
		return pno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public String getqCategoryCode() {
		return qCategoryCode;
	}

	public void setqCategoryCode(String qCategoryCode) {
		this.qCategoryCode = qCategoryCode;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqWriter() {
		return qWriter;
	}

	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "Qna [pno=" + pno + ", qCategoryCode=" + qCategoryCode + ", qTitle=" + qTitle + ", qWriter=" + qWriter
				+ ", createDate=" + createDate + "]";
	}
	
	
} //
