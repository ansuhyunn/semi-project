package com.kh.mypage.model.vo;

import java.sql.Date;

public class Qna {

	private int qnaNo;
	private int productNo;     // 문의상품
	private int memNo;
	private String qnaWriter;  // 작성자닉네임
	private String qnaPwd;
	private String secret;     // 비밀글여부
	private String qnaTitle;
	private String qContent;   // 문의내용
	private Date createDate;
	private String categoryCode;
	private String aContent;   // 답변내용
	private Date aCreateDate;  // 답변작성일
	private int aMemNo;        // 답변자회원번호
	private String status;     // 게시상태 
	
	public Qna() {}

	public Qna(int qnaNo, int productNo, int memNo, String qnaWriter, String qnaPwd, String secret, String qnaTitle,
			String qContent, Date createDate, String categoryCode, String aContent, Date aCreateDate, int aMemNo,
			String status) {
		super();
		this.qnaNo = qnaNo;
		this.productNo = productNo;
		this.memNo = memNo;
		this.qnaWriter = qnaWriter;
		this.qnaPwd = qnaPwd;
		this.secret = secret;
		this.qnaTitle = qnaTitle;
		this.qContent = qContent;
		this.createDate = createDate;
		this.categoryCode = categoryCode;
		this.aContent = aContent;
		this.aCreateDate = aCreateDate;
		this.aMemNo = aMemNo;
		this.status = status;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getQnaWriter() {
		return qnaWriter;
	}

	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}

	public String getQnaPwd() {
		return qnaPwd;
	}

	public void setQnaPwd(String qnaPwd) {
		this.qnaPwd = qnaPwd;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public Date getaCreateDate() {
		return aCreateDate;
	}

	public void setaCreateDate(Date aCreateDate) {
		this.aCreateDate = aCreateDate;
	}

	public int getaMemNo() {
		return aMemNo;
	}

	public void setaMemNo(int aMemNo) {
		this.aMemNo = aMemNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Qna [qnaNo=" + qnaNo + ", productNo=" + productNo + ", memNo=" + memNo + ", qnaWriter=" + qnaWriter
				+ ", qnaPwd=" + qnaPwd + ", secret=" + secret + ", qnaTitle=" + qnaTitle + ", qContent=" + qContent
				+ ", createDate=" + createDate + ", categoryCode=" + categoryCode + ", aContent=" + aContent
				+ ", aCreateDate=" + aCreateDate + ", aMemNo=" + aMemNo + ", status=" + status + "]";
	}
	
	
}
