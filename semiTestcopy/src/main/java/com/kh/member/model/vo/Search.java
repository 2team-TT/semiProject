package com.kh.member.model.vo;

import java.sql.Date;

public class Search {

	private int sNo; // 검색번호
	private int tagNo; // 태그번호
	private int userNo; //회원번호
	private String sName; // 검색어
	private int sCount; // 검색량
	private Date sDate; // 검색날짜
	
	
	
	public Search() {}



	public Search(int sNo, int tagNo, int userNo, String sName, int count, Date sDate) {
		super();
		this.sNo = sNo;
		this.tagNo = tagNo;
		this.userNo = userNo;
		this.sName = sName;
		this.sCount = count;
		this.sDate = sDate;
	}



	public int getsNo() {
		return sNo;
	}



	public void setsNo(int sNo) {
		this.sNo = sNo;
	}



	public int getTagNo() {
		return tagNo;
	}



	public void setTagNo(int tagNo) {
		this.tagNo = tagNo;
	}



	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	public String getsName() {
		return sName;
	}



	public void setsName(String sName) {
		this.sName = sName;
	}



	public int getCount() {
		return sCount;
	}



	public void setCount(int count) {
		this.sCount = count;
	}



	public Date getsDate() {
		return sDate;
	}



	public void setsDate(Date sDate) {
		this.sDate = sDate;
	}



	@Override
	public String toString() {
		return "Search [sNo=" + sNo + ", tagNo=" + tagNo + ", userNo=" + userNo + ", sName=" + sName + ", count="
				+ sCount + ", sDate=" + sDate + "]";
	}



	
	
	
	
}
