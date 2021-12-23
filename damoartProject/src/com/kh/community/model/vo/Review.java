package com.kh.community.model.vo;

public class Review {

	private String title;
	private String mainImg;
	private int rvNo;
	private int orderNo;
	private String reviewId;
	private String reviewPwd;
	private String reviewName;
	private String reviewContent;
	private String reviewDate;
	private String reviewStar;	// 별점 점수
	private int reviewView; // == count
	private String reviewSecret;
	private String reviewFile;
	private String deleteStatus;
	private String blindStatus;
	
	public Review() {}

	public Review(String title, String mainImg, int rvNo, int orderNo, String reviewId, String reviewPwd,
			String reviewName, String reviewContent, String reviewDate, String reviewStar, int reviewView,
			String reviewSecret, String reviewFile, String deleteStatus, String blindStatus) {
		super();
		this.title = title;
		this.mainImg = mainImg;
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
	
	
	// 리뷰 메인화면 및 게시글 화면
	public Review(String title, String mainImg, int rvNo, int orderNo, String reviewId, String reviewName,
			String reviewContent, String reviewDate, String reviewStar, int reviewView, String reviewFile) {
		super();
		this.title = title;
		this.mainImg = mainImg;
		this.rvNo = rvNo;
		this.orderNo = orderNo;
		this.reviewId = reviewId;
		this.reviewName = reviewName;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.reviewStar = reviewStar;
		this.reviewView = reviewView;
		this.reviewFile = reviewFile;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
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

	public String getReviewStar() {
		return reviewStar;
	}

	public void setReviewStar(String reviewStar) {
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
		return "Review [title=" + title + ", mainImg=" + mainImg + ", rvNo=" + rvNo + ", orderNo=" + orderNo
				+ ", reviewId=" + reviewId + ", reviewPwd=" + reviewPwd + ", reviewName=" + reviewName
				+ ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", reviewStar=" + reviewStar
				+ ", reviewView=" + reviewView + ", reviewSecret=" + reviewSecret + ", reviewFile=" + reviewFile
				+ ", deleteStatus=" + deleteStatus + ", blindStatus=" + blindStatus + "]";
	}

	
}