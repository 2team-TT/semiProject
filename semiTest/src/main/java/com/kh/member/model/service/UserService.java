package com.kh.member.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.member.model.dao.UserDao;
import com.kh.member.model.vo.Search;
import com.kh.member.model.vo.User;

public class UserService {

	
	public User selectUser(String userId, String pwd) {
		
		
		Connection conn = getConnection();
		
		User u = new UserDao().selectUser(conn, userId, pwd);
		
		
		close(conn);
		
		
		return u;
	}
	
	
	
	public int insertSearch(String search, int userNo) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().insertSearch(conn, search, userNo);
		
		if(result==0) {
			rollback(conn);
		}else {
			commit(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	public int insertSearch(String search) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().insertSearch(conn, search);
		
		if(result==0) {
			rollback(conn);
		}else {
			commit(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	public ArrayList<Search> selectLikeSearchList(String content){
		
		Connection conn = getConnection();
		
		
		ArrayList<Search> list = new UserDao().selectLikeSearchList(conn, content);
		
		close(conn);
		return list;
	}
	
	
	
	
	public int searchCountUp(String search) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().searchCountUp(conn, search);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		
		close(conn);
		
		return result;
		
		
	}
	
	
	public int searchCountUp(String search, int userNo) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().searchCountUp(conn, search , userNo);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		
		close(conn);
		
		return result;
		
		
	}
	
	
	
	public ArrayList<Search> selectBestSearchList(){
		
		Connection conn = getConnection();
		
		ArrayList<Search> list = new UserDao().selectBestSearchList(conn);
		
		close(conn);
		return list;
	}
	
	
	public int AllsearchCountUp(String search) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().AllsearchCountUp(conn, search);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
			
		}
		
		close(conn);
		
		return result;
		
		
	}
	
	
	public int InsertAllsearch(String search) {
		Connection conn = getConnection();
		
		int result = new UserDao().InsertAllsearch(conn, search);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		return result;
	}
	
	
	
	public int selectCheckId(String checkId) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().selectCheckId(conn, checkId);
		
		close(conn);
		
		return result;
	}
	
	
	
	
	public int insertUser(User u) {
		
		Connection conn = getConnection();
		
		int result = new UserDao().insertUser(conn, u);
		
		if(result==0) {
			rollback(conn);
		}else {
			commit(conn);
		}
		
		close(conn);
		
		return result;
	}
	
	
	
	
	
}
