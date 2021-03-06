package com.kh.community.model.vo;

public class Review {

	private String title;
	private String mainImg;
	private int rvNo;
	private int memNo;
	private String memId;
	private String nickName;
	private int orderNo;
	private String reviewTitle;
	private String reviewContent;
	private String reviewDate;
	private String reviewStar;	// 별점 점수, 소수점때문에 string으로 받음
	private int reviewView; // == count
	private String deleteStatus;
	
	public Review() {}

	public Review(String title, String mainImg, int rvNo, int memNo, String nickName, int orderNo, String reviewTitle,
			String reviewContent, String reviewDate, String reviewStar, int reviewView, String deleteStatus) {
		super();
		this.title = title;
		this.mainImg = mainImg;
		this.rvNo = rvNo;
		this.memNo = memNo;
		this.nickName = nickName;
		this.orderNo = orderNo;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.reviewStar = reviewStar;
		this.reviewView = reviewView;
		this.deleteStatus = deleteStatus;
	}
	

	public Review(String title, String mainImg, int rvNo, String nickName, int orderNo, String reviewTitle,
			String reviewContent, String reviewDate, String reviewStar, int reviewView) {
		super();
		this.title = title;
		this.mainImg = mainImg;
		this.rvNo = rvNo;
		this.nickName = nickName;
		this.orderNo = orderNo;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.reviewStar = reviewStar;
		this.reviewView = reviewView;
	}
	
	
	// 관리자 리뷰 리스트
	public Review(int rvNo, String nickName, String reviewTitle, String reviewDate, String reviewStar,
			String deleteStatus) {
		super();
		this.rvNo = rvNo;
		this.nickName = nickName;
		this.reviewTitle = reviewTitle;
		this.reviewDate = reviewDate;
		this.reviewStar = reviewStar;
		this.deleteStatus = deleteStatus;
	}
	
	// 관리자 리뷰 상세봏기
	public Review(int rvNo, int memNo, String memId, int orderNo, String reviewTitle, String reviewContent,
			String reviewDate, String reviewStar, int reviewView, String deleteStatus) {
		super();
		this.rvNo = rvNo;
		this.memNo = memNo;
		this.memId = memId;
		this.orderNo = orderNo;
		this.reviewTitle = reviewTitle;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.reviewStar = reviewStar;
		this.reviewView = reviewView;
		this.deleteStatus = deleteStatus;
	}
	
	// 리뷰 등록
	public Review(int orderNo, String title, String mainImg, int memNo) {
		super();
		this.orderNo = orderNo;
		this.title = title;
		this.mainImg = mainImg;
		this.memNo = memNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
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

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getReviewTitle() {
		return reviewTitle;
	}

	public void setReviewTitle(String reviewTitle) {
		this.reviewTitle = reviewTitle;
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

	public String getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(String deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	@Override
	public String toString() {
		return "Review [title=" + title + ", mainImg=" + mainImg + ", rvNo=" + rvNo + ", memNo=" + memNo + ", memId="
				+ memId + ", nickName=" + nickName + ", orderNo=" + orderNo + ", reviewTitle=" + reviewTitle
				+ ", reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", reviewStar=" + reviewStar
				+ ", reviewView=" + reviewView + ", deleteStatus=" + deleteStatus + "]";
	}

	


}