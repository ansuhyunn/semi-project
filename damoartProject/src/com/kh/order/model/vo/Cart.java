package com.kh.order.model.vo;

public class Cart {
	
	 private int memNo;
	   private int pNo;
	   private String cartOpt; 
	   private int cartCount;
	   private String title;
	   private String area;
	   private String sDate;
	   private String eDate;
	   private int aPrice;
	   private int tPrice;
	   private int cPrice;
	   private String mainImage;
	   private String soldOut;

	   public Cart() {}

	   
	   public Cart(String title, String area, String sDate, String eDate, int aPrice, int tPrice, int cPrice, String mainImage, String soldOut, String cartOpt, int cartCount, int memNo) {
	      super();
	      this.title = title;
	      this.area = area;
	      this.sDate = sDate;
	      this.eDate = eDate;
	      this.aPrice = aPrice;
	      this.tPrice = tPrice;
	      this.cPrice = cPrice;
	      this.mainImage = mainImage;
	      this.soldOut = soldOut;
	      this.cartOpt = cartOpt;
	      this.cartCount = cartCount;
	      this.memNo = memNo;
	      
	   }

	   
	   public Cart(int memNo, int pNo, String cartOpt, int cartCount, String title, String area, String sDate, String eDate,
	         int aPrice, int tPrice, int cPrice, String mainImage, String soldOut) {
	      super();
	      this.memNo = memNo;
	      this.pNo = pNo;
	      this.cartOpt = cartOpt;
	      this.cartCount = cartCount;
	      this.title = title;
	      this.area = area;
	      this.sDate = sDate;
	      this.eDate = eDate;
	      this.aPrice = aPrice;
	      this.tPrice = tPrice;
	      this.cPrice = cPrice;
	      this.mainImage = mainImage;
	      this.soldOut = soldOut;
	   }

	   


	   public Cart(int memNo, int pNo, String cartOpt, int cartCount) {
		super();
		this.memNo = memNo;
		this.pNo = pNo;
		this.cartOpt = cartOpt;
		this.cartCount = cartCount;
	}


	public int getmemNo() {
	      return memNo;
	   }



	   public void setmemNo(int memNo) {
	      this.memNo = memNo;
	   }



	   public int getpNo() {
	      return pNo;
	   }



	   public void setpNo(int pNo) {
	      this.pNo = pNo;
	   }



	   public String getCartOpt() {
	      return cartOpt;
	   }



	   public void setCartOpt(String cartOpt) {
	      this.cartOpt = cartOpt;
	   }



	   public int getCartCount() {
	      return cartCount;
	   }



	   public void setCartCount(int cartCount) {
	      this.cartCount = cartCount;
	   }



	   public String getTitle() {
	      return title;
	   }



	   public void setTitle(String title) {
	      this.title = title;
	   }



	   public String getArea() {
	      return area;
	   }



	   public void setArea(String area) {
	      this.area = area;
	   }



	   public String getsDate() {
	      return sDate;
	   }



	   public void setsDate(String sDate) {
	      this.sDate = sDate;
	   }



	   public String geteDate() {
	      return eDate;
	   }



	   public void seteDate(String eDate) {
	      this.eDate = eDate;
	   }



	   public int getaPrice() {
	      return aPrice;
	   }



	   public void setaPrice(int aPrice) {
	      this.aPrice = aPrice;
	   }



	   public int gettPrice() {
	      return tPrice;
	   }



	   public void settPrice(int tPrice) {
	      this.tPrice = tPrice;
	   }



	   public int getcPrice() {
	      return cPrice;
	   }



	   public void setcPrice(int cPrice) {
	      this.cPrice = cPrice;
	   }



	   public String getMainImage() {
	      return mainImage;
	   }



	   public void setMainImage(String mainImage) {
	      this.mainImage = mainImage;
	   }



	   public String getSoldOut() {
	      return soldOut;
	   }



	   public void setSoldOut(String soldOut) {
	      this.soldOut = soldOut;
	   }



	   @Override
	   public String toString() {
	      return "Cart [memNo=" + memNo + ", pNo=" + pNo + ", cartOpt=" + cartOpt + ", cartCount=" + cartCount
	            + ", title=" + title + ", area=" + area + ", sDate=" + sDate + ", eDate=" + eDate + ", aPrice=" + aPrice
	            + ", tPrice=" + tPrice + ", cPrice=" + cPrice + ", mainImage=" + mainImage + ", soldOut=" + soldOut
	            + "]";
	   }
}
	   


