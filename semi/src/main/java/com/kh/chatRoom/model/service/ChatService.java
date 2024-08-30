package com.kh.chatRoom.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.chatRoom.model.dao.ChatDao;
import com.kh.chatRoom.model.vo.ChatMsg;
import com.kh.chatRoom.model.vo.ChatRoom;
import com.kh.member.model.vo.User;

import static com.kh.common.JDBCTemplate.*;

public class ChatService {

	
	
	public ArrayList<ChatRoom> selectChatRoomList(int userNo){
		Connection conn = getConnection();
		
		ArrayList<ChatRoom> list = new ChatDao().selectChatRoomList(conn, userNo);
		
		close(conn);
		
		return list;
	}
	
	
	public ArrayList<ChatMsg> selectMessageList(int chatNo){
		Connection conn = getConnection();
		
		ArrayList<ChatMsg> list = new ChatDao().selectMessageList(conn, chatNo);
		
		close(conn);
		
		return list;
	}
	
	
	public int insertChatMsg(ChatMsg cm) {
		Connection conn  = getConnection();
		
		int result = new ChatDao().insertChatMsg(conn, cm);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	
	public ArrayList<User> selectUserList(int userNo){
		Connection conn = getConnection();
		
		ArrayList<User> list = new ChatDao().selectUserList(conn, userNo);
		
		close(conn);
		
		return list;
	}
	
	public int selectUserId(String userId) {
		Connection conn =getConnection();
		
		int userNo = new ChatDao().selectUserId(conn,userId);
		
		close(conn);
		
		return userNo;
	}
	
	
}
