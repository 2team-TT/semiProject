package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.vo.PageInfo;
import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.ProductInquiry;

public class ProductService {
	
	// 내 문의 내역 리스트 카운트
	public int selectMyProductQeustionCount(int userNo) {
		
		Connection conn = getConnection();
		
		int count = new ProductDao().selectMyProductQeustionCount(conn, userNo);
		
		close(conn);
		
		return count;
	}// selectMyProductQeustionList() end
	
	// 내 문의 내역 조회
	
	public ArrayList<ProductInquiry> selectMyProductQuestionList(PageInfo qPi, int userNo){
		
		Connection conn = getConnection();
		
		ArrayList<ProductInquiry> qList = new ProductDao().selectMyProductQuestionList(conn, qPi, userNo);
		
		close(conn);
		
		return qList;
	}//selectMyProductQuestionList() end

}//ProductService 클래스 end
