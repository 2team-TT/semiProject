package com.kh.chatRoom.model.dao;


import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.chatRoom.model.vo.ChatMsg;
import com.kh.chatRoom.model.vo.ChatRoom;
import com.kh.member.model.vo.User;

import static com.kh.common.JDBCTemplate.*;

public class ChatDao {

	private Properties prop = new Properties();
	
	
	public ChatDao() {
		String filePath = ChatDao.class.getResource("/db/sql/chat-mapper.xml").getPath();
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public ArrayList<ChatRoom> selectChatRoomList(Connection conn, int userNo){
		
		ArrayList<ChatRoom> list = new ArrayList<ChatRoom>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectChatRoomList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new ChatRoom(rset.getInt("ch_no")
						, rset.getInt("user_no")
						, rset.getInt("send_no")
						, rset.getString("send_id")
						, rset.getString("last_message")
						, rset.getString("create_date")
						, rset.getString("modify_date")
						, rset.getString("status")));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	
	public ArrayList<ChatMsg> selectMessageList(Connection conn, int chatNo){
		ArrayList<ChatMsg> list = new ArrayList<ChatMsg>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMessageList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, chatNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new ChatMsg(rset.getInt("cm_no")
							, rset.getString("cm_content")
							, rset.getInt("ch_no")
							, rset.getInt("user_no")
							, rset.getString("send_id")
							, rset.getString("SEND_DATE")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
	
	
	
	public int insertChatMsg(Connection conn, ChatMsg cm) {
		
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertChatMsg");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cm.getMessage());
			pstmt.setInt(2, cm.getChatNo());
			pstmt.setInt(3, cm.getSendUserNo());
			
			result =pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	
	
	
	public ArrayList<User> selectUserList(Connection conn, int userNo){
		ArrayList<User> list = new ArrayList<User>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectUserList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				User u = new User();
				u.setUserId(rset.getString("user_id"));
				u.setUserNick(rset.getString("user"));
				
				list.add(u);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	
	public int selectUserId(Connection conn, String userId) {
		int userNo =0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectUserId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				
				userNo= rset.getInt("USER_NO");
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return userNo;
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
