package com.kh.board.model.vo;

import java.sql.Date;

public class Attachment {

	private int atNo; // 파일 번호
	private int boardNo; // 참조하는 게시글
	private String originName; // 
	private String newName;
	private String filePath;
	private String fileLevel;
	private Date uploadDate;
	private String status;
	
	public Attachment() {}

	public Attachment(int atNo, int boardNo, String originName, String newName, String filePath, String fileLevel,
			Date uploadDate, String status) {
		super();
		this.atNo = atNo;
		this.boardNo = boardNo;
		this.originName = originName;
		this.newName = newName;
		this.filePath = filePath;
		this.fileLevel = fileLevel;
		this.uploadDate = uploadDate;
		this.status = status;
	}

	public int getAtNo() {
		return atNo;
	}

	public void setAtNo(int atNo) {
		this.atNo = atNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getNewName() {
		return newName;
	}

	public void setNewName(String newName) {
		this.newName = newName;
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

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
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
		return "Attachment [atNo=" + atNo + ", boardNo=" + boardNo + ", originName=" + originName + ", newName="
				+ newName + ", filePath=" + filePath + ", fileLevel=" + fileLevel + ", uploadDate=" + uploadDate
				+ ", status=" + status + "]";
	}

	
	
	
	
	
}
