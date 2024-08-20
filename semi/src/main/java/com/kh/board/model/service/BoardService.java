package com.kh.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;

import static com.kh.common.JDBCTemplate.*;

public class BoardService {

	public ArrayList<Board> mainSelectBoardBestList(){
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().mainSelectBoardBestList(conn);
		
		close(conn);
		
		return list;
		
		
	}
	
	public ArrayList<Board> mainSelectHoneyList(){
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().mainSelectHoneyList(conn);
		
		close(conn);
		
		return list;
		
		
	}
	
	
	public ArrayList<Board> mainSelectNoticeList(){
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().mainSelectNoticeList(conn);
		
		close(conn);
		
		return list;
		
		
	}
	
	public int selectFreeBoardListCount() {
		
		Connection conn = getConnection();
		
		int count = new BoardDao().selectFreeBoardListCount(conn);
		
		close(conn);
		
		return count;
	}
	
	
	
//	자유게시판 리스트 조회 최신순 인기순
	public ArrayList<Board> selectFreeBoardList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectFreeBoardList(conn, pi);
		
		close(conn);
	
		
		return list;
	}
	
	public ArrayList<Board> selectBestFreeBoardList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectBestFreeBoardList(conn, pi);
		
		close(conn);
	
		
		return list;
	}
	
	
	
	
	
//	꿀팁게시판 리스트 조회 최신순 인기순
	public ArrayList<Board> selectHoneyBoardList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectHoneyBoardList(conn, pi);
		
		close(conn);
	
		
		return list;
	}
	
	public ArrayList<Board> selectBestHoneyBoardList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectBestHoneyBoardList(conn, pi);
		
		close(conn);
	
		
		return list;
	}
	
}
