package com.kh.board.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.board.model.vo.Board;
import static com.kh.common.JDBCTemplate.*;

public class BoardDao {

	
	private Properties prop = new Properties();
	
	
	public BoardDao() {
		
		String filePath = BoardDao.class.getResource("/db/sql/board-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	
	public ArrayList<Board> mainSelectBoardBestList(Connection conn){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("mainSelectBoardBestList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset= pstmt.executeQuery();
			
			while(rset.next()) {
				Board b = new Board();
				b.setBoardNo(rset.getInt("board_no"));
				b.setBoardTitle(rset.getString("BOARD_TITLE"));
				b.setViewCount(rset.getInt("VIEW_COUNT"));
				list.add(b);
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
	
	
	
	public ArrayList<Board> mainSelectHoneyList(Connection conn){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("mainSelectHoneyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset= pstmt.executeQuery();
			
			while(rset.next()) {
				Board b = new Board();
				b.setBoardNo(rset.getInt("board_no"));
				b.setBoardTitle(rset.getString("BOARD_TITLE"));
				b.setViewCount(rset.getInt("VIEW_COUNT"));
				list.add(b);
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
	
	
	public ArrayList<Board> mainSelectNoticeList(Connection conn){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("mainSelectNoticeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rset= pstmt.executeQuery();
			
			while(rset.next()) {
				Board b = new Board();
				b.setBoardNo(rset.getInt("board_no"));
				b.setBoardTitle(rset.getString("BOARD_TITLE"));
				b.setCreateDate(rset.getString("create_date"));
				list.add(b);
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
	
}
