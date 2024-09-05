package com.kh.chatRoom.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.chatRoom.model.dao.ChatDao;
import com.kh.chatRoom.model.vo.Category;
import com.kh.chatRoom.model.vo.ChatMsg;
import com.kh.chatRoom.model.vo.ChatRoom;
import com.kh.chatRoom.model.vo.Expenses;
import com.kh.chatRoom.model.vo.Income;
import com.kh.chatRoom.model.vo.TotalAmount;
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
	
	
	
	public int incometotalSelect(int userNo) {
		Connection conn = getConnection();
		
		int result = new ChatDao().incometotalSelect(conn, userNo);
		
		close(conn);
		
		return result;
	}
	
	public int expensestotalSelect(int userNo) {
		Connection conn = getConnection();
		
		int result = new ChatDao().expensestotalSelect(conn, userNo);
		
		close(conn);
		
		return result;
	}
	
	
	public TotalAmount selectMonthtotal(int userNo, String date) {
		Connection conn = getConnection();
		
		TotalAmount ta = new TotalAmount();
		int income=	new ChatDao().selectMonthtotalIncome(conn, userNo, date);
		int expenses=new ChatDao().selectMonthtotalExpenses(conn, userNo, date);
				
		ta.setDate(date);
		ta.setIncome(income);
		ta.setExpenses(expenses);
		ta.setTotal(income-expenses);
		close(conn);
		
		return ta;
	}
	
	public ArrayList<Income> selectIncomeList(int userNo, String date) {
		Connection conn = getConnection();
		
		ArrayList<Income> list = new ChatDao().selectIncomeList(conn, userNo, date);
		
		close(conn);
		
		return list;
	}
	
	public ArrayList<Expenses> selectExpensesList(int userNo, String date) {
		Connection conn = getConnection();
		
		ArrayList<Expenses> list = new ChatDao().selectExpensesList(conn, userNo, date);
		
		close(conn);
		
		return list;
	}
	
	
	public ArrayList<Category> categoryList(){
		Connection conn = getConnection();
		
		ArrayList<Category> list = new ChatDao().categoryList(conn);
		
		close(conn);
		
		return list;
	}
	
	
	
	
	public int insertIncome(Income in) {
		Connection conn = getConnection();
		
		int result = new ChatDao().insertIncome(conn , in);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	
	public int insertExpenses(Expenses ex) {
		Connection conn = getConnection();
		
		int result = new ChatDao().insertExpenses(conn , ex);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	public int deleteincome(int inNo) {
		Connection conn = getConnection();
		
		int result = new ChatDao().deleteincome(conn, inNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	public int deleteExpenses(int outNo) {
		Connection conn = getConnection();
		
		int result = new ChatDao().deleteExpenses(conn, outNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	public int insertChatRoom(int userNo, int sendNo) {
		Connection conn = getConnection();
		
		int result = new ChatDao().insertChatRoom(conn, userNo, sendNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	
	public int selectChatRoomCount(int userNo, int sendNo) {
		Connection conn = getConnection();
		
		int count = new ChatDao().selectChatRoomCount(conn, userNo, sendNo);
		
		close(conn);
		
		return count;
	}
	

	
	
	
}
