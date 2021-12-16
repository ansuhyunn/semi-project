package com.kh.community.model.vo;

public class Review {

	private int rvNo;
	private int orderNo;
	private String reviewId;
	private String reviewPwd;
	private String reviewName;
	private String reviewContent;
	private String reviewDate;
	private int reviewStar;	// 별점 점수로 세니까 int 같음
	private int reviewView; // == count
	private String reviewSecret;
	private String reviewFile;
	private String deleteStatus;
	private String blindStatus;
	
	public Review() {}

	public Review(int rvNo, int orderNo, String reviewId, String reviewPwd, String reviewName, String reviewContent,
			String reviewDate, int reviewStar, int reviewView, String reviewSecret, String reviewFile,
			String deleteStatus, String blindStatus) {
		super();
		this.rvNo = rvNo;
		this.orderNo = orderNo;
		this.reviewId = reviewId;
		this.reviewPwd = reviewPwd;
		this.reviewName = reviewName;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.reviewStar = reviewStar;
		this.reviewView = reviewView;
		this.reviewSecret = reviewSecret;
		this.reviewFile = reviewFile;
		this.deleteStatus = deleteStatus;
		this.blindStatus = blindStatus;
	}

	public int getRvNo() {
		return rvNo;
	}

	public void setRvNo(int rvNo) {
		this.rvNo = rvNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getReviewId() {
		return reviewId;
	}

	public void setReviewId(String reviewId) {
		this.reviewId = reviewId;
	}

	public String getReviewPwd() {
		return reviewPwd;
	}

	public void setReviewPwd(String reviewPwd) {
		this.reviewPwd = reviewPwd;
	}

	public String getReviewName() {
		return reviewName;
	}

	public void setReviewName(String reviewName) {
		this.reviewName = reviewName;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public String getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(String reviewDate) {
		this.reviewDate = reviewDate;
	}

	public int getReviewStar() {
		return reviewStar;
	}

	public void setReviewStar(int reviewStar) {
		this.reviewStar = reviewStar;
	}

	public int getReviewView() {
		return reviewView;
	}

	public void setReviewView(int reviewView) {
		this.reviewView = reviewView;
	}

	public String getReviewSecret() {
		return reviewSecret;
	}

	public void setReviewSecret(String reviewSecret) {
		this.reviewSecret = reviewSecret;
	}

	public String getReviewFile() {
		return reviewFile;
	}

	public void setReviewFile(String reviewFile) {
		this.reviewFile = reviewFile;
	}

	public String getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public String getBlindStatus() {
		return blindStatus;
	}

	public void setBlindStatus(String blindStatus) {
		this.blindStatus = blindStatus;
	}

	@Override
	public String toString() {
		return "Review [rvNo=" + rvNo + ", orderNo=" + orderNo + ", reviewId=" + reviewId + ", reviewPwd=" + reviewPwd
				+ ", reviewName=" + reviewName + ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate
				+ ", reviewStar=" + reviewStar + ", reviewView=" + reviewView + ", reviewSecret=" + reviewSecret
				+ ", reviewFile=" + reviewFile + ", deleteStatus=" + deleteStatus + ", blindStatus=" + blindStatus
				+ "]";
	}
	
	
	
}