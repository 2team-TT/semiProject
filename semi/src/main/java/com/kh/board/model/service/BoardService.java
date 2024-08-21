package com.kh.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.dao.BoardDao;
import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;
import com.kh.board.model.vo.Reply;
import com.kh.board.model.vo.Used;
import com.kh.common.model.vo.Tag;

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
	
	// 내 게시글 리스트 카운트
	public int selectMyBoardListCount(int userNo) {
		Connection conn = getConnection();
		
		int count = new BoardDao().selectMyBoardListCount(conn, userNo);
		
		close(conn);
		
		return count;
	}
	
	
	// 마이페이지 내 게시판 조회
	public ArrayList<Board> selectMyBoardList(PageInfo pi, int userNo){
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectMyBoardList(conn, pi, userNo);
		
		close(conn);
		
		return list;
	}//selectBoardList() end
	
	// 내 댓글 리스트 카운트
	public int selectMyReplyCount(int userNo) {
		Connection conn = getConnection();
		
		int count = new BoardDao().selectMyReplyCount(conn, userNo);
		
		close(conn);
		
		return count;
	}//selecyMyReplyCount() end
	
	// 마이페이지 내 댓글 조회
	public ArrayList<Reply> selectMyReplyList(PageInfo replyPi, int userNo ){
		
		Connection conn = getConnection();
		
		ArrayList<Reply> rList = new BoardDao().selectMyReplyList(conn, replyPi, userNo);
		close(conn);
		
		return rList;
	}

	//selectMyReplyList() end
	
	public int selectMyLikesCount(int userNo) {
		Connection conn = getConnection();
		
		int count = new BoardDao().selectMyLikesCount(conn, userNo);
		
		close(conn);
		
		return count;
	}//selectMyLikesCount() end
	
	public ArrayList<Board> selectMyLikesList(PageInfo likesPi, int userNo){
		
		Connection conn = getConnection();
		
		ArrayList<Board> lList = new BoardDao().selectMyLikesList(conn, likesPi, userNo);
		
		close(conn);
		
		return lList;
	}//selectMyLikesList() end

		
	
	// 커뮤니티 게시판 태그 조회
	public ArrayList<Tag> selectBoardTagList(){
		
		Connection conn = getConnection();
		
		ArrayList<Tag> list = new BoardDao().selectBoardTagList(conn);
		
		close(conn);
		
		return list;
		
	}
	
	
	
	
	
	
	
	
	// 커뮤니티 insert
	public int insertBoard(Board b, Attachment at , Used ud) {
		
		
		Connection conn = getConnection();
		
		int result1 = new BoardDao().insertBoard(conn, b);
		
		int result2 = 1;
		
		if(at!= null) {
			result2 = new BoardDao().insertAttachment(conn, at);
		}
		
		int result3 =1;
		
		if(ud != null) {
			result3 = new BoardDao().insertUsed(conn, ud);
		}
		
		int result = result1 * result2 *result3;
		if(result==1) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
		
		
		
	}
	
	
	public int selectFoodBoardListCount() {
		
		Connection conn = getConnection();
		
		int count = new BoardDao().selectFoodBoardListCount(conn);
		
		close(conn);
		
		return count;
	}
	
	public int selectHoneyBoardListCount() {
		
Connection conn = getConnection();
		
		int count = new BoardDao().selectHoneyBoardListCount(conn);
		
		close(conn);
		
		return count;
	}
	
	
	
	
	
	
	
//	요리게시판 리스트 조회 최신순 인기순
	public ArrayList<Board> selectFoodBoardList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectFoodBoardList(conn, pi);
		
		close(conn);
	
		
		return list;
	}
	
	public ArrayList<Board> selectBestFoodBoardList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectBestFoodBoardList(conn, pi);
		
		close(conn);
	
		
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	public int selectUsedBoardListCount() {
		
		Connection conn = getConnection();
		
		int count = new BoardDao().selectHoneyBoardListCount(conn);
		
		close(conn);
		
		return count;
	}
	
	
	
	
	
	
	
//	요리게시판 리스트 조회 최신순 인기순
	public ArrayList<Board> selectUsedBoardList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectUsedBoardList(conn, pi);
		
		close(conn);
	
		
		return list;
	}
	
	public ArrayList<Board> selectBestUsedBoardList(PageInfo pi) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectBestUsedBoardList(conn, pi);
		
		close(conn);
	
		
		return list;
	}
	
}

