package com.kh.member.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;

import com.kh.member.model.vo.Search;
import com.kh.member.model.vo.User;

public class UserDao {

	
	private Properties prop = new Properties();
	
	public UserDao() {
		
		String filePath = UserDao.class.getResource("/db/sql/user-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	
	public User selectUser(Connection conn, String userId, String userPwd) {
		
		User u = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql= prop.getProperty("selectUser");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				u= new User(rset.getInt("user_no")
						,rset.getString("user_id")
						,rset.getString("user_pwd")
						,rset.getString("user_name")
						,rset.getString("user_nick")
						,rset.getString("address")
						,rset.getString("phone")
						,rset.getString("email")
						,rset.getDate("enroll_date")
						,rset.getDate("modify_date")
						,rset.getString("status"));
				
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		
		return u;
		
		
	}
	
	
	public int insertSearch(Connection conn, String search, int userNo) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertSearch-USERNO");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setString(2, search);

			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
		
	}
	
	public int insertSearch(Connection conn, String search) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertSearch");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search);

			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
		
	}
	
	
	
	public ArrayList<Search> selectLikeSearchList(Connection conn, String content){
		
		ArrayList<Search> list = new ArrayList<Search>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset =null;
		
		String sql = prop.getProperty("selectLikeSearchList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "%" +content+"%");
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Search s = new Search();
				s.setsName(rset.getString("AS_CONTENT"));
				s.setCount(rset.getInt("AS_COUNT"));
				list.add(s);
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
	
	
	
	
	
	public int searchCountUp(Connection conn, String search) {
		
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("searchCountUp");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,search);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
		
		
		
		
		
		
	}
	
	public int searchCountUp(Connection conn, String search, int userNo) {
		
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("searchCountUp-USERNO");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,search);
			pstmt.setInt(2, userNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
		
		
		
		
		
		
	}
	
	
	public ArrayList<Search> selectBestSearchList(Connection conn){
		
		ArrayList<Search> list = new ArrayList<Search>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBestSearchList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Search s = new Search();
				s.setsName(rset.getString("AS_CONTENT"));
				s.setCount(rset.getInt("AS_COUNT"));
				list.add(s);
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
	
	
	
	
	public int AllsearchCountUp(Connection conn, String search) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("AllsearchCountUp");
		
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, search);
			
			result =pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
		
	}
	
	
	public int InsertAllsearch(Connection conn, String search) {
	int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("InsertAllsearch");
		
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, search);
			
			result =pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	public int selectCheckId(Connection conn, String checkId) {
		
		int result = 0 ;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql =prop.getProperty("selectCheckId");
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt("result");
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
