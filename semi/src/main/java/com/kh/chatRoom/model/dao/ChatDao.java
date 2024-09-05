package com.kh.chatRoom.model.dao;


import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.chatRoom.model.vo.Category;
import com.kh.chatRoom.model.vo.ChatMsg;
import com.kh.chatRoom.model.vo.ChatRoom;
import com.kh.chatRoom.model.vo.Expenses;
import com.kh.chatRoom.model.vo.Income;
import com.kh.chatRoom.model.vo.TotalAmount;
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
			pstmt.setInt(2, userNo);
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
	
	
	
	
	public int incometotalSelect(Connection conn, int userNo) {
		int result =0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset =null;
		
		String sql = prop.getProperty("incometotalSelect");
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1 , userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("income");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	public int expensestotalSelect(Connection conn, int userNo) {
		int result =0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset =null;
		
		String sql = prop.getProperty("expensestotalSelect");
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1 , userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("EXPENSES");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	public int selectMonthtotalIncome(Connection conn, int userNo, String date) {
		
		int result= 0;
		
		
		PreparedStatement pstmt = null;
		
		
		ResultSet rset =null;
		
		
		String sql = prop.getProperty("selectMonthtotalIncome");
		
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setString(2, date);
		
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("INCOME");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
		
	}
	
	
	
	
	public int selectMonthtotalExpenses(Connection conn, int userNo, String date) {
		
		int result= 0;
		
		
		PreparedStatement pstmt = null;
		
		
		ResultSet rset =null;
		
		
		String sql = prop.getProperty("selectMonthtotalExpenses");
		
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setString(2, date);
		
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("EXPENSES");
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
		
	}
	
	
	
	public ArrayList<Income> selectIncomeList(Connection conn, int userNo, String date){
		ArrayList<Income> list = new ArrayList<Income>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectIncomeList");
		
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setString(2, date);
			
			rset =pstmt.executeQuery();
			
			while(rset.next()) {
			
				list.add(new Income(rset.getInt("income_no")
						, rset.getInt("in_amount")
						, rset.getString("in_date")
						, rset.getString("in_des")
						, rset.getString("category_name")
						, rset.getString("status")
						));
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
	
	
	
	
	public ArrayList<Expenses> selectExpensesList(Connection conn, int userNo, String date){
		ArrayList<Expenses> list = new ArrayList<Expenses>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectExpensesList");
		
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setString(2, date);
			
			rset =pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Expenses(rset.getInt("OUT_NO")
						, rset.getInt("OUT_AMOUNT")
						, rset.getString("OUT_DATE")
						, rset.getString("OUT_DES")
						, rset.getString("category_name")
						, rset.getString("status")
						));
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
	
	
	
	
	public ArrayList<Category> categoryList(Connection conn){
		
		ArrayList<Category> list = new ArrayList<Category>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("categoryList");
		
		try {
			pstmt =conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Category(rset.getInt("category_no"), rset.getString("category_name")));
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
	
	
	public int insertIncome(Connection conn, Income in) {
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertIncome");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, in.getInAmount());
			pstmt.setString(2, in.getInDate());
			pstmt.setString(3, in.getInDes());
			pstmt.setInt(4, Integer.parseInt(in.getCategory()));
			pstmt.setInt(5, in.getUserNo());
			
			result =pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
				
		return result;
	}
	
	
	
	
	public int insertExpenses(Connection conn, Expenses ex) {
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertExpenses");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ex.getOutAmount());
			pstmt.setString(2, ex.getOutDate());
			pstmt.setString(3, ex.getOutDes());
			pstmt.setInt(4, Integer.parseInt(ex.getCategory()));
			pstmt.setInt(5, ex.getUserNo());
			
			result =pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
				
		return result;
	}
	
	
	
	
	public int deleteincome(Connection conn, int inNo) {
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteincome");
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, inNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public int deleteExpenses(Connection conn, int outNo) {
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("deleteExpenses");
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, outNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	public int insertChatRoom(Connection conn , int userNo, int sendNo) {
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertChatRoom");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, sendNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	
	public int selectChatRoomCount(Connection conn, int userNo, int sendNo) {
		int count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectChatRoomCount");
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, userNo);
			pstmt.setInt(3, sendNo);
			pstmt.setInt(4, sendNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
			
		}
		
		return count;
	}
	
	
	

	
}
