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
	
	
	// board 한개 select
	
	public Board selectBoardDeteil(int boardNo) {
		
		Connection conn = getConnection();
		
		Board b = new BoardDao().selectBoardDeteil(conn, boardNo);
		
		close(conn);
		
		return b;
	}

	
	
	// 게시글조회시 카운트업
	public int boardCountUp(int boardNo) {
		
		Connection conn = getConnection();
		
		int result = new BoardDao().boardCountUp(conn, boardNo);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	// 좋아요 테이블 조회
	public int selectLikesBoard(int userNo, int boardNo) {
		
		Connection conn = getConnection();
		
		int count = new BoardDao().selectLikesBoard(conn, userNo, boardNo);
		
		close(conn);
		
		return count;
		
		
		
	}
	
	// 좋아요 테이블 insert
	public int insertLikesBoard(int userNo, int boardNo ) {
		
		Connection conn = getConnection();
		
		int result = new BoardDao().insertLikesBoard(conn,userNo, boardNo);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	
	// 좋아요 테이블 delete
	public int deleteLikesBoard(int userNo, int boardNo ) {
		
		Connection conn = getConnection();
		
		int result = new BoardDao().deleteLikesBoard(conn,userNo, boardNo);
		
		if(result >0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}
	
	// 댓글 테이블 조회 - 조건 게시글
	public ArrayList<Reply> selectBoardReplyList(int boardNo) {
		
		Connection conn = getConnection();
		
		ArrayList<Reply> list= new BoardDao().selectBoardReplyList(conn, boardNo);
		
		close(conn);
		
		return list;
		
		
		
	}
	
	
	//댓글 insert
	
	public int insertBoardReply(Reply r) {
		
		Connection conn = getConnection();
		
		int result = new BoardDao().insertBoardReply(conn, r);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}
	

	
	
	//대댓글 조회 조건 댓글 번호
	
	public ArrayList<Reply> selectReReplyList(int replyNo){
		
		Connection conn = getConnection();
		
		ArrayList<Reply> list = new BoardDao().selectReReplyList(conn, replyNo);
		
		close(conn);
		
		return list;
	}
	
	//대댓글 insert
	public int insertReReply(Reply r) {
		
		Connection conn = getConnection();
		
		int result = new BoardDao().insertReReply(conn, r);
		
		if(result>0) {
			commit(conn);
			
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
		
	}
	
	//게시글 사진 불려오기 조건 게시글 번호
	public Attachment selectBoardAttachment(int bno) {
		
		Connection conn = getConnection();
		
		Attachment at = new BoardDao().selectBoardAttachment(conn, bno);
		
		close(conn);
		
		return at;
		
	}
	
	
	//중고 상세 불려오기 조건 게시글 번호
	public Used selectBoardUsed(int bno) {
		
		Connection conn = getConnection();
		
		Used ud = new BoardDao().selectBoardUsed(conn, bno);
		
		close(conn);
		
		return ud;
		
	}
	
	// 내 게시글 삭제
	public int deleteMyBoard(int bno) {
        Connection conn = getConnection();
        int result = new BoardDao().deleteMyBoard(conn, bno);
        if(result > 0) {
            commit(conn);
        } else {
            rollback(conn);
        }
        close(conn);
        return result;
    }
	
	// 내 댓글 삭제
	public int deleteMyReply(int rno) {
		Connection conn = getConnection();
		int result = new BoardDao().deleteMyReply(conn, rno);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	// 마이페이지 좋아요 한 글 취소
	public int cancelLikes(int boardNo, int userNo) {
		Connection conn = getConnection();
		int result = new BoardDao().cancelLikes(conn, boardNo, userNo);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}
	
	
	// 검색어로 board 조회
	public ArrayList<Board> searchBoardList(String search){
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().searchBoardList(conn,search);
		
		close(conn);
		
		return list;
	}
	
	
	// 검색어 조건으로 게시글 개수 조회
	public int selectsearchBoardCount(String search) {
		
		Connection conn = getConnection();
		
		int count = new BoardDao().selectsearchBoardCount(conn,search);
		
		close(conn);
		
		return count;
	}
	
	
	public ArrayList<Board> selectsearchBoard(PageInfo pi, String search) {
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new BoardDao().selectsearchBoard(conn, pi, search);
		
		close(conn);
	
		
		return list;
	}
	
	
	
	
	public int updateBoard(Board b, Attachment at, Used ud) {
		
		Connection conn = getConnection();
		
		int result1 = new BoardDao().updateBoard(conn, b);
		
		int result2 =1;
		
		if(at!=null) {
			
			if(at.getAtNo()==0) {
				//기존 사진이 없는 경우
				result2= new BoardDao().insertupdateAttachment(conn, at);
			}else {
				result2 = new BoardDao().updateAttachment(conn, at);
			}
		}
		
		int result3 =1;
		
		if(ud!=null) {
			if(ud.getUsed()==0) {
				result3 = new BoardDao().insertupdateUsed(conn, ud);
			}else {
				result3 = new BoardDao().updateUsed(conn, ud);
			}
		}
		
		int result = result1 * result2 *result3;
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
		
		
	}
	
	
	
	public int deleteBoard(int BoardNo) {
		
		Connection conn = getConnection();
		
		int result = new BoardDao().deleteBoard(conn,BoardNo);
		
		if(result>0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	
}

