package com.kh.property.model.vo;

public class Brokerage {

	private int bNo;
	private String bName;
	private String type;
	private String Phone;
	private String president;
	private String bBno;
	private String location;
	private String rating;
	private String enrollDate;
	private String status;
	private String bestREply;
	private String titleImg;
	
	
	public Brokerage() {}


	public Brokerage(int bNo, String bName, String type, String phone, String president, String bBno, String location,
			String rating, String enrollDate, String status) {
		super();
		this.bNo = bNo;
		this.bName = bName;
		this.type = type;
		Phone = phone;
		this.president = president;
		this.bBno = bBno;
		this.location = location;
		this.rating = rating;
		this.enrollDate = enrollDate;
		this.status = status;
	}


	public int getbNo() {
		return bNo;
	}


	public void setbNo(int bNo) {
		this.bNo = bNo;
	}


	public String getbName() {
		return bName;
	}


	public void setbName(String bName) {
		this.bName = bName;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getPhone() {
		return Phone;
	}


	public void setPhone(String phone) {
		Phone = phone;
	}


	public String getPresident() {
		return president;
	}


	public void setPresident(String president) {
		this.president = president;
	}


	public String getbBno() {
		return bBno;
	}


	public void setbBno(String bBno) {
		this.bBno = bBno;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getRating() {
		return rating;
	}


	public void setRating(String rating) {
		this.rating = rating;
	}


	public String getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}

	

	public String getBestREply() {
		return bestREply;
	}


	public void setBestREply(String bestREply) {
		this.bestREply = bestREply;
	}

	

	public String getTitleImg() {
		return titleImg;
	}


	public void setTitleImg(String titleImg) {
		this.titleImg = titleImg;
	}


	@Override
	public String toString() {
		return "Brokerage [bNo=" + bNo + ", bName=" + bName + ", type=" + type + ", Phone=" + Phone + ", president="
				+ president + ", bBno=" + bBno + ", location=" + location + ", rating=" + rating + ", enrollDate="
				+ enrollDate + ", status=" + status + ", bestREply=" + bestREply + ", titleImg=" + titleImg + "]";
	}




	
}
