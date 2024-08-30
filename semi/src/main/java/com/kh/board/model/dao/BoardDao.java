package com.kh.board.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.naming.spi.DirStateFactory.Result;

import com.kh.board.model.vo.Attachment;
import com.kh.board.model.vo.Board;
import com.kh.board.model.vo.PageInfo;
import com.kh.board.model.vo.Reply;
import com.kh.board.model.vo.Used;
import com.kh.common.model.vo.Tag;

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
	
	public int selectFreeBoardListCount(Connection conn) {
		
		int count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFreeBoardListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
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
	
	
	
//	자유게시판 리스트 조회 최신순 인기순
	public ArrayList<Board> selectFreeBoardList(Connection conn, PageInfo pi){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFreeBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow =(pi.getCurrentPage()-1)* pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("board_no")
						, rset.getString("tag_name")
						, rset.getString("board_title")
						, rset.getString("board_content")
						, rset.getString("user_id")
						, rset.getInt("view_count")
						, rset.getInt("reply_count")
						, rset.getInt("likes_count")
						, rset.getString("create_date")
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
	
	
	public ArrayList<Board> selectBestFreeBoardList(Connection conn, PageInfo pi){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBestFreeBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow =(pi.getCurrentPage()-1)* pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("board_no")
						, rset.getString("tag_name")
						, rset.getString("board_title")
						, rset.getString("board_content")
						, rset.getString("user_id")
						, rset.getInt("view_count")
						, rset.getInt("reply_count")
						, rset.getInt("likes_count")
						, rset.getString("create_date")
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
	
//	꿀팁게시판 리스트 조회 최신순 인기순
public ArrayList<Board> selectHoneyBoardList(Connection conn, PageInfo pi){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectHoneyBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow =(pi.getCurrentPage()-1)* pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("board_no")
						, rset.getString("tag_name")
						, rset.getString("board_title")
						, rset.getString("board_content")
						, rset.getString("user_id")
						, rset.getInt("view_count")
						, rset.getInt("reply_count")
						, rset.getInt("likes_count")
						, rset.getString("create_date")
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
	
	
	public ArrayList<Board> selectBestHoneyBoardList(Connection conn, PageInfo pi){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBestHoneyBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow =(pi.getCurrentPage()-1)* pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("board_no")
						, rset.getString("tag_name")
						, rset.getString("board_title")
						, rset.getString("board_content")
						, rset.getString("user_id")
						, rset.getInt("view_count")
						, rset.getInt("reply_count")
						, rset.getInt("likes_count")
						, rset.getString("create_date")
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
	
	// 내 게시글 총 갯수
	public int selectMyBoardListCount(Connection conn, int userNo) {
		
		int count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMyBoardListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
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
	
	// 내 게시글 리스트
	public ArrayList<Board> selectMyBoardList(Connection conn, PageInfo pi, int userNo){
		
		ArrayList<Board> list = new ArrayList<Board>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMyBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (pi.getCurrentPage() - 1) * pi.getBoardLimit() + 1;
			int endRow = startRow + pi.getBoardLimit() - 1;
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Board(rset.getInt("board_no")
								 , rset.getString("tag_name")
								 , rset.getString("board_title")
								 , rset.getString("user_id")
								 , rset.getInt("view_count")
								 , rset.getInt("reply_count")
								 , rset.getString("create_date")
								 ));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}//selectMyBoardList() end
	
	
	//내 댓글 총 갯수
	public int selectMyReplyCount(Connection conn, int userNo) {
		
		int count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMyReplyCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
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
		
	}//selectMyReplyCount() end
	
	// 내 댓글 리스트
	public ArrayList<Reply> selectMyReplyList(Connection conn, PageInfo replyPi, int userNo){
		
		ArrayList<Reply> rList = new ArrayList<Reply>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMyReplyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (replyPi.getCurrentPage() - 1) * replyPi.getBoardLimit() + 1;
			int endRow = startRow + replyPi.getBoardLimit() - 1;
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				rList.add(new Reply(rset.getInt("reply_no")
								  , rset.getInt("board_no")
		 						  , rset.getString("reply_writer")
								  , rset.getString("reply_content")
								  , rset.getInt("likes_count")
								  , rset.getString("create_date")
								  , rset.getString("tag_name")
								  , rset.getString("board_writer")
								  , rset.getString("user_nick")
								  , rset.getString("user_id")
								));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return rList;
	}//selectMyReplyCount() end
	
	public int selectMyLikesCount(Connection conn, int userNo) {
		
		int count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMyLikesCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return count;
	}//selectMyLikesCount() end
	
	public ArrayList<Board> selectMyLikesList(Connection conn, PageInfo likesPi, int userNo){
		
		ArrayList<Board> lList = new ArrayList<Board>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMyLikesList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow = (likesPi.getCurrentPage() - 1) * likesPi.getBoardLimit() + 1;
			int endRow = startRow + likesPi.getBoardLimit() - 1;
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				lList.add(new Board(rset.getInt("board_no")
								  , rset.getString("board_title")
								  , rset.getString("board_writer")
								  , rset.getInt("view_count")
								  , rset.getString("create_date")
								  , rset.getString("tag_name") 
								  , rset.getString("user_nick")
								  , rset.getString("user_id")
						));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return lList;
		
	}//selectMyLikesList() end
	
	
	
	
	
	public ArrayList<Tag> selectBoardTagList(Connection conn){
		
		ArrayList<Tag> list = new ArrayList<Tag>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBoardTagList");
		
		try {
			pstmt =conn.prepareStatement(sql);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Tag(rset.getInt("tag_no"),rset.getString("tag_name")));
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
	
	
	
	
	
	public int insertBoard(Connection conn , Board b) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertBoard");
		
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, b.getTagNo());
			pstmt.setString(2, b.getBoardTitle());
			pstmt.setString(3, b.getBoardContent());
			pstmt.setString(4, b.getBoardWriter());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	
	
	public int insertAttachment(Connection conn , Attachment at) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertAttachment");
		
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1,at.getOriginName());
			pstmt.setString(2, at.getNewName());
			pstmt.setString(3, at.getFilePath());
			pstmt.setString(4, at.getFileLevel());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	public int insertUsed(Connection conn , Used ud) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertUsed");
		
		try {
			pstmt= conn.prepareStatement(sql);
			pstmt.setString(1, ud.getModelName());
			pstmt.setInt(2, ud.getPrice());
			pstmt.setString(3, ud.getModelStatus());
			pstmt.setString(4, ud.getTradingArea());
			pstmt.setString(5, ud.getTradingMethod());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	
	
	
	
	
	public int selectFoodBoardListCount(Connection conn) {
		
		int count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFoodBoardListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
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
	
	
	
	public int selectHoneyBoardListCount(Connection conn) {
		
		int count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectHoneyBoardListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
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
	
	
	
	
	
	
	
	
//	요리게시판 리스트 조회 최신순 인기순
	public ArrayList<Board> selectFoodBoardList(Connection conn, PageInfo pi){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectFoodBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow =(pi.getCurrentPage()-1)* pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setBoardNo(rset.getInt("Board_no"));
				b.setBoardTitle(rset.getString("board_title"));
				b.setViewCount(rset.getInt("view_count"));
				b.setReplyCount(rset.getInt("REPLY_COUNT"));
				b.setLikesCount(rset.getInt("LIKES_COUNT"));
				b.setCreateDate(rset.getString("create_date"));
				b.setTitleImg(rset.getString("title_img"));
				
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
	
	
	public ArrayList<Board> selectBestFoodBoardList(Connection conn, PageInfo pi){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBestFoodBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow =(pi.getCurrentPage()-1)* pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setBoardNo(rset.getInt("Board_no"));
				b.setBoardTitle(rset.getString("board_title"));
				b.setViewCount(rset.getInt("view_count"));
				b.setReplyCount(rset.getInt("REPLY_COUNT"));
				b.setLikesCount(rset.getInt("LIKES_COUNT"));
				b.setCreateDate(rset.getString("create_date"));
				b.setTitleImg(rset.getString("title_img"));
				
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
	
	
	
	
	
	
	
	
	public int selectUsedBoardListCount(Connection conn) {
		
		int count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectUsedBoardListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
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
	
	
	
	
	
	
	
	
//	중고 리스트 조회 최신순 인기순
	public ArrayList<Board> selectUsedBoardList(Connection conn, PageInfo pi){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectUsedBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow =(pi.getCurrentPage()-1)* pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setBoardNo(rset.getInt("Board_no"));
				b.setBoardTitle(rset.getString("board_title"));
				
				b.setModelName(rset.getString("model_no"));
				b.setPrice(rset.getInt("price"));
				b.setModelStatus(rset.getString("model_status"));
				b.setTradingArea(rset.getString("trading_area"));
				b.setTradingMethod(rset.getString("trading_method"));
				
				
				b.setCreateDate(rset.getString("create_date"));
				b.setTitleImg(rset.getString("title_img"));
				
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
	
	
	public ArrayList<Board> selectBestUsedBoardList(Connection conn, PageInfo pi){
		
		ArrayList<Board> list = new ArrayList<Board>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBestUsedBoardList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			int startRow =(pi.getCurrentPage()-1)* pi.getBoardLimit()+1;
			int endRow = startRow + pi.getBoardLimit() -1;
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
		
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Board b = new Board();
				
				b.setBoardNo(rset.getInt("Board_no"));
				b.setBoardTitle(rset.getString("board_title"));
				
				b.setModelName(rset.getString("model_no"));
				b.setPrice(rset.getInt("price"));
				b.setModelStatus(rset.getString("model_status"));
				b.setTradingArea(rset.getString("trading_area"));
				b.setTradingMethod(rset.getString("trading_method"));
				
				
				b.setCreateDate(rset.getString("create_date"));
				b.setTitleImg(rset.getString("title_img"));
				
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
	
	
	
	
	public Board selectBoardDeteil(Connection conn, int boardNo) {
		
		Board b =null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBoardDeteil");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				b = new Board();
				b.setBoardNo(rset.getInt("board_no"));
				b.setTagNo(rset.getString("tag_no"));
				b.setBoardTitle(rset.getString("board_title"));
				b.setBoardContent(rset.getString("board_content"));
				b.setBoardWriter(rset.getString("user_id"));
				b.setUserNick(rset.getString("user_nick"));
				b.setViewCount(rset.getInt("view_count"));
				b.setReplyCount(rset.getInt("reply_count"));
				b.setLikesCount(rset.getInt("likes_count"));
				b.setCreateDate( rset.getString("create_date"));
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return b;
		
		
	}
	
	
	// 게시글조회시 카운트업
	public int boardCountUp(Connection conn, int boardNo) {
		
		int result =0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("boardCountUp");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, boardNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	
	// 좋아요 테이블 조회
	public int selectLikesBoard(Connection conn, int userNo, int boardNo) {
		
		int count = 0;
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectLikesBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, boardNo);
			
			rset =pstmt.executeQuery();
			
			if(rset.next()) {
				count = rset.getInt("count");
				System.out.println("dd");
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
	
	// 좋아요 테이블 insert
	public int insertLikesBoard(Connection conn, int userNo, int boardNo) {
		
		int result =0;
		
		PreparedStatement pstmt = null;
		
		
		
		String sql = prop.getProperty("insertLikesBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, boardNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
		
	}
	
	// 좋아요 테이블 delete
	public int deleteLikesBoard(Connection conn, int userNo, int boardNo) {
		
		int result =0;
		
		PreparedStatement pstmt = null;
		
		
		
		String sql = prop.getProperty("deleteLikesBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, boardNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
		
		
	}
	
	
	
	
	
	// 댓글 리스트 조회 - 조건 게시글번호
	public ArrayList<Reply> selectBoardReplyList(Connection conn, int BoardNo){
		
		ArrayList<Reply> rList = new ArrayList<Reply>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectBoardReplyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, BoardNo);
			
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				
				Reply r = new Reply();
				r.setReplyNo(rset.getInt("reply_no"));
				r.setBoardNo(rset.getInt("board_no"));
				r.setReplyWriter(rset.getString("USER_ID"));
				r.setUserNick(rset.getString("user_nick"));
				r.setReplyContent(rset.getString("reply_content"));
				r.setReReplyCount(rset.getInt("RE_REPLY_COUNT"));
				r.setLikesCount(rset.getInt("LIKES_COUNT"));
				r.setCreateDate(rset.getString("create_date"));
				
				rList.add(r);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return rList;
	}
	
	
	
	
	
	public int insertBoardReply(Connection conn, Reply r) {
		
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertBoardReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getBoardNo());
			pstmt.setInt(2, Integer.parseInt(r.getReplyWriter()));
			pstmt.setString(3, r.getReplyContent());
			
			result = pstmt.executeUpdate();
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
		
		
	}
	
	
	// 대댓글 조회 조건 댓글 번호
	
	public ArrayList<Reply> selectReReplyList(Connection conn, int replyNo){
		
		ArrayList<Reply> list = new ArrayList<Reply>();
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectReReplyList");
		
		try {
			pstmt =conn.prepareStatement(sql);
			pstmt.setInt(1, replyNo);
			
			rset = pstmt.executeQuery();
			
			
			while(rset.next()) {
				Reply r = new Reply();
				r.setReplyNo(rset.getInt("RR_NO"));
				r.setBoardNo(rset.getInt("REPLY_NO"));
				r.setReplyWriter(rset.getString("USER_ID"));
				r.setUserNick(rset.getString("user_nick"));
				r.setReplyContent(rset.getString("RR_CONTENT"));
				r.setCreateDate(rset.getString("create_date"));
				
				list.add(r);
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
	
	

	//대댓글 insert
	public int insertReReply(Connection conn, Reply r) {
		
		int result =0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertReReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, r.getBoardNo());
			pstmt.setInt(2, Integer.parseInt(r.getReplyWriter()));
			pstmt.setString(3, r.getReplyContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		return result;
		
	}
	
	
	//게시글 조회 조건 board no
	public Attachment selectBoardAttachment(Connection conn, int bno) {
		
		Attachment at = null;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBoardAttachment");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				at = new Attachment(rset.getInt("b_img_no")
						, rset.getInt("board_no")
						, rset.getString("origin_name")
						, rset.getString("filepath"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			close(rset);
			close(pstmt);
		}
		
		return at;
		
	}
	
	
	public Used selectBoardUsed(Connection conn, int bno) {
		
		Used ud = null;
		
		PreparedStatement pstmt =null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectBoardUsed");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ud = new Used(rset.getInt("used_no")
						, rset.getInt("board_no")
						, rset.getString("model_no")
						, rset.getInt("price")
						, rset.getString("model_status")
						, rset.getString("trading_area")
						, rset.getString("trading_method")
						, rset.getString("SELL_STATUS"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return ud;
		
	}
	// 마이페이지 내 게시글 삭제
	public int deleteMyBoard(Connection conn, int bno) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("deleteMyBoard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, bno);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}//deleteMyBoard() end
	
	// 마이페이지 내 댓글 삭제
	
	public int deleteMyReply(Connection conn, int rno) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("deleteMyReply");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rno);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}//deleteMyReply() end
	
	// 마이페이지 좋아요 한 글 취소
	public int cancelLikes(Connection conn, int boardNo, int userNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("deleteLikesBoard"); // 이미 만들어진 좋아요 삭제 쿼리문 가져오기
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, boardNo);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}// cancelLikes() end
}
