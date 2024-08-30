package com.kh.chatRoom.model.vo;

public class ChatRoom {

	private int chatNo;
	private int userNo;
	private int sendUserNo;
	private String sendUserId;
	private String lastMsg;
	private String createDate;
	private String modifyDate;
	private String status;
	
	
	public ChatRoom() {}


	public ChatRoom(int chatNo, int userNo, int sendUserNo, String sendUserId, String lastMsg, String createDate,
			String modifyDate, String status) {
		super();
		this.chatNo = chatNo;
		this.userNo = userNo;
		this.sendUserNo = sendUserNo;
		this.sendUserId = sendUserId;
		this.lastMsg = lastMsg;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.status = status;
	}


	public int getChatNo() {
		return chatNo;
	}


	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public int getSendUserNo() {
		return sendUserNo;
	}


	public void setSendUserNo(int sendUserNo) {
		this.sendUserNo = sendUserNo;
	}


	public String getSendUserId() {
		return sendUserId;
	}


	public void setSendUserId(String sendUserId) {
		this.sendUserId = sendUserId;
	}


	public String getLastMsg() {
		return lastMsg;
	}


	public void setLastMsg(String lastMsg) {
		this.lastMsg = lastMsg;
	}


	public String getCreateDate() {
		return createDate;
	}


	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}


	public String getModifyDate() {
		return modifyDate;
	}


	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "ChatRoom [chatNo=" + chatNo + ", userNo=" + userNo + ", sendUserNo=" + sendUserNo + ", sendUserId="
				+ sendUserId + ", lastMsg=" + lastMsg + ", createDate=" + createDate + ", modifyDate=" + modifyDate
				+ ", status=" + status + "]";
	}



}