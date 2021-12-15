package com.kh.mypage.model.vo;

public class Member {

	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String nickname;
	private String email;
	private String phone;
	private String birth;
	private String enrollDate;
	private String memType;
	private String status;
	
	public Member() {}

	public Member(int memNo, String memId, String memPwd, String memName, String nickname, String email, String phone,
			String birth, String enrollDate, String memType, String status) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.nickname = nickname;
		this.email = email;
		this.phone = phone;
		this.birth = birth;
		this.enrollDate = enrollDate;
		this.memType = memType;
		this.status = status;
	}

	public Member(String userName, String userId, String nickName, String email, String phone, String year, String month, String day) {
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getMemType() {
		return memType;
	}

	public void setMemType(String memType) {
		this.memType = memType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Member [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", nickname=" + nickname + ", email=" + email + ", phone=" + phone + ", birth=" + birth
				+ ", enrollDate=" + enrollDate + ", memType=" + memType + ", status=" + status + "]";
	}
	
	
}
