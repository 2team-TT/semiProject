package com.kh.chatRoom.model.vo;

import java.sql.Date;

public class Expenses {

	private int outNo;
	private int outAmount;
	private String outDate;
	private String outDes;
	private String category;
	private String userId;
	private int userNo;
	private String status;
	
	public Expenses() {}

	public Expenses(int outNo, int outAmount, String outDate, String outDes, String category, String userId, int userNo,
			String status) {
		super();
		this.outNo = outNo;
		this.outAmount = outAmount;
		this.outDate = outDate;
		this.outDes = outDes;
		this.category = category;
		this.userId = userId;
		this.userNo = userNo;
		this.status = status;
	}

	public Expenses(int outNo, int outAmount, String outDate, String outDes, String category, String status) {
		super();
		this.outNo = outNo;
		this.outAmount = outAmount;
		this.outDate = outDate;
		this.outDes = outDes;
		this.category = category;
		this.status = status;
	}

	public int getOutNo() {
		return outNo;
	}

	public void setOutNo(int outNo) {
		this.outNo = outNo;
	}

	public int getOutAmount() {
		return outAmount;
	}

	public void setOutAmount(int outAmount) {
		this.outAmount = outAmount;
	}

	public String getOutDate() {
		return outDate;
	}

	public void setOutDate(String outDate) {
		this.outDate = outDate;
	}

	public String getOutDes() {
		return outDes;
	}

	public void setOutDes(String outDes) {
		this.outDes = outDes;
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
		return "Expenses [outNo=" + outNo + ", outAmount=" + outAmount + ", outDate=" + outDate + ", outDes=" + outDes
				+ ", category=" + category + ", userId=" + userId + ", userNo=" + userNo + ", status=" + status + "]";
	}

	
	
	
}
