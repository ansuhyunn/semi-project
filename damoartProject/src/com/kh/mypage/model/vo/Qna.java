package com.kh.mypage.model.vo;

public class Qna {
	private int qNo;
	private String pNo;
	private int memNo;
	private String qWriter;
	private String qPwd;
	private String secret;
	private String qTitle;
	private String qContent;
	private String createDate;
	private String qCategoryCode;
	private String aContent;
	private String aCreateDate;
	private String aWriter;
	private String status;
	private String title;
	
	private String pMainImg;
	
	public Qna () {}

	public Qna(int qNo, String pNo, int memNo, String qWriter, String qPwd, String secret, String qTitle, String qContent,
			String createDate, String qCategoryCode, String aContent, String aCreateDate, String aWriter,
			String status) {
		super();
		this.qNo = qNo;
		this.pNo = pNo;
		this.memNo = memNo;
		this.qWriter = qWriter;
		this.qPwd = qPwd;
		this.secret = secret;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.createDate = createDate;
		this.qCategoryCode = qCategoryCode;
		this.aContent = aContent;
		this.aCreateDate = aCreateDate;
		this.aWriter = aWriter;
		this.status = status;
	}
	
	
	public Qna(int qNo, String title, String qWriter, String secret, String qTitle, String qContent, String createDate,
			String qCategoryCode, String aContent, String aCreateDate, String aWriter) {
		super();
		this.qNo = qNo;
		this.title = title;
		this.qWriter = qWriter;
		this.secret = secret;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.createDate = createDate;
		this.qCategoryCode = qCategoryCode;
		this.aContent = aContent;
		this.aCreateDate = aCreateDate;
		this.aWriter = aWriter;
	}

	
	public Qna(int qNo, String qWriter) {
		super();
		this.qNo = qNo;
		this.qWriter = qWriter;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getpMainImg() {
		return pMainImg;
	}

	public void setpMainImg(String pMainImg) {
		this.pMainImg =pMainImg;
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public String getpNo() {
		return pNo;
	}

	public void setpNo(String pNo) {
		this.pNo = pNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getqWriter() {
		return qWriter;
	}

	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}

	public String getqPwd() {
		return qPwd;
	}

	public void setqPwd(String qPwd) {
		this.qPwd = qPwd;
	}

	public String getSecret() {
		return secret;
	}

	public void setSecret(String secret) {
		this.secret = secret;
	}

	public String getqTitle() {
		return qTitle;
	}

	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}

	public String getqContent() {
		return qContent;
	}

	public void setqContent(String qContent) {
		this.qContent = qContent;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getqCategoryCode() {
		return qCategoryCode;
	}

	public void setqCategoryCode(String qCategoryCode) {
		this.qCategoryCode = qCategoryCode;
	}

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
	}

	public String getaCreateDate() {
		return aCreateDate;
	}

	public void setaCreateDate(String aCreateDate) {
		this.aCreateDate = aCreateDate;
	}

	public String getaWriter() {
		return aWriter;
	}

	public void setaWriter(String aWriter) {
		this.aWriter = aWriter;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "QnA [qNo=" + qNo + ", pNo=" + pNo + ", memNo=" + memNo + ", qWriter=" + qWriter + ", qPwd=" + qPwd
				+ ", secret=" + secret + ", qTitle=" + qTitle + ", qContent=" + qContent + ", createDate=" + createDate
				+ ", qCategoryCode=" + qCategoryCode + ", aContent=" + aContent + ", aCreateDate=" + aCreateDate
				+ ", aWriter=" + aWriter + ", status=" + status + ", pMainImg=" + pMainImg + "]";
	}

	
	
}
