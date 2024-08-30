package com.kh.chatRoom.model.vo;

public class ChatMsg {
	private int chatMsgNo;
	private String message;
	private int chatNo;
	private int sendUserNo;
	private String sendUserid;
	private String send_date;
	
	public ChatMsg() {}

	public ChatMsg(int chatMsgNo, String message, int chatNo, int sendUserNo, String sendUserid, String send_date) {
		super();
		this.chatMsgNo = chatMsgNo;
		this.message = message;
		this.chatNo = chatNo;
		this.sendUserNo = sendUserNo;
		this.sendUserid = sendUserid;
		this.send_date = send_date;
	}

	public int getChatMsgNo() {
		return chatMsgNo;
	}

	public void setChatMsgNo(int chatMsgNo) {
		this.chatMsgNo = chatMsgNo;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getChatNo() {
		return chatNo;
	}

	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}

	public int getSendUserNo() {
		return sendUserNo;
	}

	public void setSendUserNo(int sendUserNo) {
		this.sendUserNo = sendUserNo;
	}

	public String getSendUserid() {
		return sendUserid;
	}

	public void setSendUserid(String sendUserid) {
		this.sendUserid = sendUserid;
	}

	public String getSend_date() {
		return send_date;
	}

	public void setSend_date(String send_date) {
		this.send_date = send_date;
	}

	@Override
	public String toString() {
		return "ChatMsg [chatMsgNo=" + chatMsgNo + ", message=" + message + ", chatNo=" + chatNo + ", sendUserNo="
				+ sendUserNo + ", sendUserid=" + sendUserid + ", send_date=" + send_date + "]";
	}
	
	
}
