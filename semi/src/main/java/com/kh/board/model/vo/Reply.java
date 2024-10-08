package com.kh.board.model.vo;

public class Reply {

	private int replyNo;
	private int boardNo;
	private String replyWriter;
	private String replyContent;
	private int likesCount;
	private String createDate;
	private String status;
	
	//내 댓글에서 카테고리명 사용을 위해 추가
	private String tagName;
	private String boardWriter;
	private String userNick;
	private String userId;
	
	private int reReplyCount;
	
	
	public Reply() {}
	
	

	public Reply(int replyNo, int boardNo, String replyWriter, String replyContent, int likesCount, String createDate,
			String status, String tagName, String boardWriter, String userNick, String userId) {
		super();
		this.replyNo = replyNo;
		this.boardNo = boardNo;
		this.replyWriter = replyWriter;
		this.replyContent = replyContent;
		this.likesCount = likesCount;
		this.createDate = createDate;
		this.status = status;
		this.tagName = tagName;
		this.boardWriter = boardWriter;
		this.userNick = userNick;
		this.userId = userId;
	}
	
	
	
	
	

	public Reply(int replyNo, int boardNo, String replyWriter, String replyContent, int likesCount, String createDate,
			String tagName, String boardWriter, String userNick, String userId) {
		super();
		this.replyNo = replyNo;
		this.boardNo = boardNo;
		this.replyWriter = replyWriter;
		this.replyContent = replyContent;
		this.likesCount = likesCount;
		this.createDate = createDate;
		this.tagName = tagName;
		this.boardWriter = boardWriter;
		this.userNick = userNick;
		this.userId = userId;
	}



	public Reply(int replyNo, int boardNo, String replyWriter, String replyContent, int likesCount, String createDate,
			String tagName) {
		super();
		this.replyNo = replyNo;
		this.boardNo = boardNo;
		this.replyWriter = replyWriter;
		this.replyContent = replyContent;
		this.likesCount = likesCount;
		this.createDate = createDate;
		this.tagName = tagName;
	}

	public int getReplyNo() {
		return replyNo;
	}

	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getReplyWriter() {
		return replyWriter;
	}

	public void setReplyWriter(String replyWriter) {
		this.replyWriter = replyWriter;
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public int getLikesCount() {
		return likesCount;
	}

	public void setLikesCount(int likesCount) {
		this.likesCount = likesCount;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

	public String getTagName() {
		return tagName;
	}

	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	
	

	public String getBoardWriter() {
		return boardWriter;
	}



	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}



	public String getUserNick() {
		return userNick;
	}



	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}



	public String getuserId() {
		return userId;
	}



	public void setuserId(String userId) {
		this.userId = userId;
	}



	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}



	public int getReReplyCount() {
		return reReplyCount;
	}



	public void setReReplyCount(int reReplyCount) {
		this.reReplyCount = reReplyCount;
	}



	@Override
	public String toString() {
		return "Reply [replyNo=" + replyNo + ", boardNo=" + boardNo + ", replyWriter=" + replyWriter + ", replyContent="
				+ replyContent + ", likesCount=" + likesCount + ", createDate=" + createDate + ", status=" + status
				+ ", tagName=" + tagName + ", boardWriter=" + boardWriter + ", userNick=" + userNick + ", userId="
				+ userId + ", reReplyCount=" + reReplyCount + "]";
	}



	
	
	
}
