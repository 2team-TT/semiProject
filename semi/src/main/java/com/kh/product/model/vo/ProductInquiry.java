package com.kh.product.model.vo;

public class ProductInquiry {

	private int piNo;
	private int pNo;
	private int userNo;
	private String piTitle;
	private String piContent;
	private String createDate;
	private String isPrivate;
	private String answer;
	private String status;
	
	// 내 문의내역을 위한 변수 추가
	private String pName;
	private String paContent;
	
	public ProductInquiry() {}

	public ProductInquiry(int piNo, int pNo, int userNo, String piTitle, String piContent, String createDate,
			String isPrivate, String answer, String status) {
		super();
		this.piNo = piNo;
		this.pNo = pNo;
		this.userNo = userNo;
		this.piTitle = piTitle;
		this.piContent = piContent;
		this.createDate = createDate;
		this.isPrivate = isPrivate;
		this.answer = answer;
		this.status = status;
	}
	
	

	public ProductInquiry(int userNo, String piTitle, String piContent, String createDate, String answer, String pName,
			String paContent) {
		super();
		this.userNo = userNo;
		this.piTitle = piTitle;
		this.piContent = piContent;
		this.createDate = createDate;
		this.answer = answer;
		this.pName = pName;
		this.paContent = paContent;
	}

	public int getPiNo() {
		return piNo;
	}

	public void setPiNo(int piNo) {
		this.piNo = piNo;
	}

	public int getpNo() {
		return pNo;
	}

	public void setpNo(int pNo) {
		this.pNo = pNo;
	}

	public int getuserNo() {
		return userNo;
	}

	public void setuserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getPiTitle() {
		return piTitle;
	}

	public void setPiTitle(String piTitle) {
		this.piTitle = piTitle;
	}

	public String getPiContent() {
		return piContent;
	}

	public void setPiContent(String piContent) {
		this.piContent = piContent;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getIsPrivate() {
		return isPrivate;
	}

	public void setIsPrivate(String isPrivate) {
		this.isPrivate = isPrivate;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getPaContent() {
		return paContent;
	}

	public void setPaContent(String paContent) {
		this.paContent = paContent;
	}

	@Override
	public String toString() {
		return "ProductInquiry [piNo=" + piNo + ", pNo=" + pNo + ", userNo=" + userNo + ", piTitle=" + piTitle
				+ ", piContent=" + piContent + ", createDate=" + createDate + ", isPrivate=" + isPrivate + ", answer="
				+ answer + ", status=" + status + "]";
	}
	
	
}
