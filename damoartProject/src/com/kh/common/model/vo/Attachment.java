package com.kh.common.model.vo;

import java.sql.Date;

public class Attachment {
	
	private int fileNo;
	private String refBaord;
	private int refBno;
	private String originName;
	private String changeName;
	private String filePath;
	private Date uploadDate;
	private String status;
	
	public Attachment() {}

	public Attachment(int fileNo, String refBaord, int refBno, String originName, String changeName, String filePath,
			Date uploadDate, String status) {
		super();
		this.fileNo = fileNo;
		this.refBaord = refBaord;
		this.refBno = refBno;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.uploadDate = uploadDate;
		this.status = status;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public String getRefBaord() {
		return refBaord;
	}

	public void setRefBaord(String refBaord) {
		this.refBaord = refBaord;
	}

	public int getRefBno() {
		return refBno;
	}

	public void setRefBno(int refBno) {
		this.refBno = refBno;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Attachment [fileNo=" + fileNo + ", refBaord=" + refBaord + ", refBno=" + refBno + ", originName="
				+ originName + ", changeName=" + changeName + ", filePath=" + filePath + ", uploadDate=" + uploadDate
				+ ", status=" + status + "]";
	}

	
	
	
}
