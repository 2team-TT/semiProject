package com.kh.product.model.vo;

public class ProductImage {
	
	private int productImgNo;
	private int productNo;
	private String originName;
	private String changeName;
	private String filePath;
	private String fileLevel;
	private String uploadDate;
	private String status;
	
	public ProductImage() {}

	public ProductImage(int productImgNo, int productNo, String originName, String changeName, String filePath,
			String fileLevel, String uploadDate, String status) {
		super();
		this.productImgNo = productImgNo;
		this.productNo = productNo;
		this.originName = originName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.fileLevel = fileLevel;
		this.uploadDate = uploadDate;
		this.status = status;
	}

	public int getProductImgNo() {
		return productImgNo;
	}

	public void setProductImgNo(int productImgNo) {
		this.productImgNo = productImgNo;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(String fileLevel) {
		this.fileLevel = fileLevel;
	}

	public String getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "ProductImage [productImgNo=" + productImgNo + ", productNo=" + productNo + ", originName=" + originName
				+ ", changeName=" + changeName + ", filePath=" + filePath + ", fileLevel=" + fileLevel + ", uploadDate="
				+ uploadDate + ", status=" + status + "]";
	}
	
	

}
