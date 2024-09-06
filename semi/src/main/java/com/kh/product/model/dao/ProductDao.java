package com.kh.product.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.board.model.vo.PageInfo;
import com.kh.product.model.vo.Product;
import com.kh.product.model.vo.ProductInquiry;

import static com.kh.common.JDBCTemplate.*;
public class ProductDao {
	
	private Properties prop = new Properties();
	
	public ProductDao() { //ProductDao를 불러오면 자동으로 실행될 코드
		
		String filePath = ProductDao.class.getResource("/db/sql/product-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	// 내 문의 내역 카운트
	public int selectMyProductQeustionCount(Connection conn, int userNo) {
		
		int count = 0;
		
		PreparedStatement pstmt = null;
		
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMyProductQeustionCount");
		
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
			close(rset);
			close(pstmt);
		}
		
		return count;
		
	}//selectMyProductQeustionList() end
	
	// 내 문의 내역 조회
	public ArrayList<ProductInquiry> selectMyProductQuestionList(Connection conn, PageInfo qPi, int userNo){
		
		ArrayList<ProductInquiry> qList = new ArrayList<ProductInquiry>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMyProductQuestionList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (qPi.getCurrentPage() - 1) * qPi.getBoardLimit() + 1;
			int endRow = startRow + qPi.getBoardLimit() - 1;
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset= pstmt.executeQuery();

			while(rset.next()) {
				qList.add(new ProductInquiry(rset.getInt("user_no")
										   , rset.getString("pi_title")
										   , rset.getString("pi_content")
										   , rset.getString("create_date")
										   , rset.getString("answer")
										   , rset.getString("p_name")
										   , rset.getString("pa_content")
						));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return qList;
	}//selectMyProductQuestionList() end
	
	// 찜한 상품 리스트
	public ArrayList<Product> selectMyProductsList(Connection conn, int userNo){
		
		ArrayList<Product> list = new ArrayList<Product>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMyProductsList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("p_no")
								   , rset.getString("p_name")
								   , rset.getString("p_seller")
								   , rset.getInt("price")
								   , rset.getDouble("rating")
								   , rset.getString("p_content")
								   , rset.getInt("user_no")
								   , rset.getString("c_date")
									 
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
		
	}//selectMyProductsList() end
	
	//최근 본 상품 리스트
	public ArrayList<Product> selectMyRecentlyProductsList(Connection conn, int userNo){
		
		ArrayList<Product> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectMyRecentlyProductsList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(rset.getInt("p_no")
								   , rset.getString("p_name")
								   , rset.getInt("price")
								   , rset.getString("lately_date")
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
	}//selectMyRecentlyProductsList() end
	
	// 찜한 상품 삭제
	public int deleteMywishlistProduct(Connection conn, int userNo, int pno) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("deleteMywishlistProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, pno);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}//deleteMywishlistProduct() end
	
	// 최근 본 상품 삭제
	public int deleteRecentlyViewedProduct(Connection conn, int userNo, int pNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String sql = prop.getProperty("deleteRecentlyViewedProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, pNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}//deleteRecentlyViewedProduct() end
	
	// 전체 상품 베스트 가져오기
	public ArrayList<Product> selectProductBestOfAll(Connection conn){
		ArrayList<Product> list = new ArrayList<Product>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductBestOfAll");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			
			while(rset.next()) {
				// 파일 이름을 가져오기
	            String changeName = rset.getString("CHANGE_NAME");
	            
	            // 파일 이름이 null이거나 비어있으면 디폴트 값을 설정
	            if (changeName == null || changeName.isEmpty()) {
	                changeName = "default_image.jpg"; // 기본 이미지 파일 이름
	            }
	            
	            // 이미지 경로 설정
	            String imagePath = "resources/images/" + changeName;
	            
	            // Product 객체를 생성하여 리스트에 추가
	            list.add(new Product(
	                rset.getInt("p_no"),
	                rset.getInt("tag_no"),
	                rset.getString("p_name"),
	                rset.getInt("price"),
	                rset.getDouble("rating"),
	                imagePath,  // 이미지 경로
	                changeName
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
	}//selectProductBestOfAll() end
	
	// 일반 상품 베스트 가져오기
	public ArrayList<Product> selectProductCommonBest(Connection conn){
		ArrayList<Product> list = new ArrayList<Product>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductCommonBest");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
	            String changeName = rset.getString("CHANGE_NAME");
	            
	            // 파일 이름이 null이거나 비어있으면 디폴트 값을 설정
	            if (changeName == null || changeName.isEmpty()) {
	                changeName = "default_image.jpg"; // 기본 이미지 파일 이름
	            }
	            
	            // 이미지 경로 설정
	            String imagePath = "resources/images/" + changeName;
	            
	            list.add(new Product(
	                rset.getInt("p_no"),
	                rset.getInt("tag_no"),
	                rset.getString("p_name"),
	                rset.getInt("price"),
	                rset.getDouble("rating"),
	                imagePath,  // 이미지 경로
	                changeName
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
		
		
	}//selectProductCommonBest() end
	
	// 리퍼 상품 베스트 가져오기
	public ArrayList<Product> selectProductRefurbishedBest(Connection conn){
		ArrayList<Product> list = new ArrayList<Product>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectProductRefurbishedBest");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
	            String changeName = rset.getString("CHANGE_NAME");
	            
	            // 파일 이름이 null이거나 비어있으면 디폴트 값을 설정
	            if (changeName == null || changeName.isEmpty()) {
	                changeName = "default_image.jpg"; // 기본 이미지 파일 이름
	            }
	            
	            // 이미지 경로 설정
	            String imagePath = "resources/images/" + changeName;
	            
	            list.add(new Product(
	                rset.getInt("p_no"),
	                rset.getInt("tag_no"),
	                rset.getString("p_name"),
	                rset.getInt("price"),
	                rset.getDouble("rating"),
	                imagePath,  // 이미지 경로
	                changeName
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
	}

}//Product 클래스 end
