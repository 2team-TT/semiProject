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
			
			rset = pstmt.executeQuery();
			
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

}//Product 클래스 end
