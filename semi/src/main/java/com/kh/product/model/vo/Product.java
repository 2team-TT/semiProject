package com.kh.product.model.vo;

public class Product {

	 private int pNo;
	 private int tagNo;
	 private String pName;
	 private String pSeller;
	 private int price;
	 private int discount;
	 private String sellStatus;
	 private int stock;
	 private int rating;
	 private String pContent;
	 private String dPrice;
	 private int groupCount;
	 private int prCount;
	 private int chooseCount;
	 private int viewCount;
	 private String regDate; //to_char로 형식 변환할 예정이므로 String형을 쓸 것임
	 private String status;
	 
	 public Product() {}

	public Product(int pNo, int tagNo, String pName, String pSeller, int price, int discount, String sellStatus,
			int stock, int rating, String pContent, String dPrice, int groupCount, int prCount, int chooseCount,
			int viewCount, String regDate, String status) {
		super();
		this.pNo = pNo;
		this.tagNo = tagNo;
		this.pName = pName;
		this.pSeller = pSeller;
		this.price = price;
		this.discount = discount;
		this.sellStatus = sellStatus;
		this.stock = stock;
		this.rating = rating;
		this.pContent = pContent;
		this.dPrice = dPrice;
		this.groupCount = groupCount;
		this.prCount = prCount;
		this.chooseCount = chooseCount;
		this.viewCount = viewCount;
		this.regDate = regDate;
		this.status = status;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getTagNo() {
		return tagNo;
	}

	public void setTagNo(int tagNo) {
		this.tagNo = tagNo;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpSeller() {
		return pSeller;
	}

	public void setpSeller(String pSeller) {
		this.pSeller = pSeller;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}

	public String getSellStatus() {
		return sellStatus;
	}

	public void setSellStatus(String sellStatus) {
		this.sellStatus = sellStatus;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getpContent() {
		return pContent;
	}

	public void setpContent(String pContent) {
		this.pContent = pContent;
	}

	public String getdPrice() {
		return dPrice;
	}

	public void setdPrice(String dPrice) {
		this.dPrice = dPrice;
	}

	public int getGroupCount() {
		return groupCount;
	}

	public void setGroupCount(int groupCount) {
		this.groupCount = groupCount;
	}

	public int getPrCount() {
		return prCount;
	}

	public void setPrCount(int prCount) {
		this.prCount = prCount;
	}

	public int getChooseCount() {
		return chooseCount;
	}

	public void setChooseCount(int chooseCount) {
		this.chooseCount = chooseCount;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Product [pNo=" + pNo + ", tagNo=" + tagNo + ", pName=" + pName + ", pSeller=" + pSeller + ", price="
				+ price + ", discount=" + discount + ", sellStatus=" + sellStatus + ", stock=" + stock + ", rating="
				+ rating + ", pContent=" + pContent + ", dPrice=" + dPrice + ", groupCount=" + groupCount + ", prCount="
				+ prCount + ", chooseCount=" + chooseCount + ", viewCount=" + viewCount + ", regDate=" + regDate
				+ ", status=" + status + "]";
	}
	 
	 
}
