package com.kh.board.model.vo;

public class Board {
	private int boardNo;
	private String tagNo;
	private String boardTitle;
	private String boardContent;
	private String boardWriter;
	private int viewCount;
	private int replyCount;
	private int likesCount;
	private String createDate;
	private String status;
	
	// 마이페이지 좋아요 테이블을 위한 변수 선언
	private String tagName;
	private String userNick;
	private String userId;
	
	public Board() {}

	public Board(int boardNo, String tagNo, String boardTitle, String boardContent, String boardWriter, int viewCount,
			int replyCount, int likesCount, String createDate, String status) {
		super();
		this.boardNo = boardNo;
		this.tagNo = tagNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.boardWriter = boardWriter;
		this.viewCount = viewCount;
		this.replyCount = replyCount;
		this.likesCount = likesCount;
		this.createDate = createDate;
		this.status = status;
	}
	
	

	public Board(int boardNo, String tagNo, String boardTitle, String boardWriter, int viewCount, int replyCount, String createDate) {
		super();
		this.boardNo = boardNo;
		this.tagNo = tagNo;
		this.boardTitle = boardTitle;
		this.boardWriter = boardWriter;
		this.viewCount = viewCount;
		this.replyCount = replyCount;
		this.createDate = createDate;
	}
	
	

	public Board(int boardNo, String boardTitle, String boardWriter, int viewCount, String createDate, String tagName,
			String userNick, String userId) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardWriter = boardWriter;
		this.viewCount = viewCount;
		this.createDate = createDate;
		this.tagName = tagName;
		this.userNick = userNick;
		this.userId = userId;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getTagNo() {
		return tagNo;
	}

	public void setTagNo(String tagNo) {
		this.tagNo = tagNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	public int getReplyCount() {
		return replyCount;
	}

	public void setReplyCount(int replyCount) {
		this.replyCount = replyCount;
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

	public String getUserNick() {
		return userNick;
	}

	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Board [boardNo=" + boardNo + ", tagNo=" + tagNo + ", boardTitle=" + boardTitle + ", boardContent="
				+ boardContent + ", boardWriter=" + boardWriter + ", viewCount=" + viewCount + ", replyCount="
				+ replyCount + ", likesCount=" + likesCount + ", createDate=" + createDate + ", status=" + status + "]";
	};
	
	
}
