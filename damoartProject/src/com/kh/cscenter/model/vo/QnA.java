package com.kh.cscenter.model.vo;

public class QnA {
	private int qNo;
	private int pNo;
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
	
	public QnA () {}

	public QnA(int qNo, int pNo, int memNo, String qWriter, String qPwd, String secret, String qTitle, String qContent,
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
	
	

	public QnA(int qNo, int memNo, String qWriter, String secret, String qTitle, String createDate,
			String qCategoryCode, String aContent) {
		super();
		this.qNo = qNo;
		this.memNo = memNo;
		this.qWriter = qWriter;
		this.secret = secret;
		this.qTitle = qTitle;
		this.createDate = createDate;
		this.qCategoryCode = qCategoryCode;
		this.aContent = aContent;
	}

	public int getqNo() {
		return qNo;
	}

	public void setqNo(int qNo) {
		this.qNo = qNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
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
				+ ", aWriter=" + aWriter + ", status=" + status + "]";
	}
	
	
}
