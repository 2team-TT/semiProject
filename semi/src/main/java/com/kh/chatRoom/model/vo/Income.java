package com.kh.chatRoom.model.vo;

import java.sql.Date;

public class Income {
	private int inNo;
	private int inAmount;
	private String inDate;
	private String inDes;
	private String category;
	private String userId;
	private int userNo;
	private String status;
	
	public Income() {}

	public Income(int inNo, int inAmount, String inDate, String inDes, String category, String userId, int userNo,
			String status) {
		super();
		this.inNo = inNo;
		this.inAmount = inAmount;
		this.inDate = inDate;
		this.inDes = inDes;
		this.category = category;
		this.userId = userId;
		this.userNo = userNo;
		this.status = status;
	}

	
	public Income(int inNo, int inAmount, String inDate, String inDes, String category, String status) {
		super();
		this.inNo = inNo;
		this.inAmount = inAmount;
		this.inDate = inDate;
		this.inDes = inDes;
		this.category = category;
		this.status = status;
	}

	public int getInNo() {
		return inNo;
	}

	public void setInNo(int inNo) {
		this.inNo = inNo;
	}

	public int getInAmount() {
		return inAmount;
	}

	public void setInAmount(int inAmount) {
		this.inAmount = inAmount;
	}

	public String getInDate() {
		return inDate;
	}

	public void setInDate(String inDate) {
		this.inDate = inDate;
	}

	public String getInDes() {
		return inDes;
	}

	public void setInDes(String inDes) {
		this.inDes = inDes;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Income [inNo=" + inNo + ", inAmount=" + inAmount + ", inDate=" + inDate + ", inDes=" + inDes
				+ ", category=" + category + ", userId=" + userId + ", userNo=" + userNo + ", status=" + status + "]";
	}

	
	
	
}
