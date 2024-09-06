package com.kh.product.model.service;

import static com.kh.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.vo.PageInfo;
import com.kh.product.model.dao.ProductDao;
import com.kh.product.model.vo.Product;
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
	
	public ArrayList<Product> selectMyProductsList(int userNo){
		Connection conn = getConnection();
		ArrayList<Product> list = new ProductDao().selectMyProductsList(conn, userNo);
		
		close(conn);
		
		return list;
	}//selectMyProductsList() end
	
	public ArrayList<Product> selectMyRecentlyProductsList(int userNo){
		Connection conn = getConnection();
		ArrayList<Product> list = new ProductDao().selectMyRecentlyProductsList(conn, userNo);
		
		close(conn);
		
		return list;
	}//selectMyRecentlyProductsList() end
	
	public int deleteMywishlistProduct(int userNo, int pno) {
		Connection conn = getConnection();
		int result = new ProductDao().deleteMywishlistProduct(conn, userNo, pno);
		if (result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}//deleteMywishlistProduct() end
	
	public int deleteRecentlyViewedProduct(int userNo, int pNo) {
		Connection conn = getConnection();
		int result = new ProductDao().deleteRecentlyViewedProduct(conn, userNo, pNo);
		if(result>0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}//deleteRecentlyViewedProduct() end
	
	// 전체 상품 베스트 가져오기
	public ArrayList<Product> selectProductBestOfAll(){
		Connection conn = getConnection();
		ArrayList<Product> list = new ProductDao().selectProductBestOfAll(conn);
		
		close(conn);
		
		return list;
	}//selectProductBestOfAll() end
	
	// 일반 상품 베스트 가져오기
	public ArrayList<Product> selectProductCommonBest(){
		Connection conn = getConnection();
		ArrayList<Product> list = new ProductDao().selectProductCommonBest(conn);
		
		close(conn);
		
		return list;
	}
	
	// 리퍼 상품 베스트 가져오기
	public ArrayList<Product> selectProductRefurbishedBest(){
		Connection conn = getConnection();
		ArrayList<Product> list = new ProductDao().selectProductRefurbishedBest(conn);
		
		close(conn);
		
		return list;
	}//selectProductRefurbishedBest() end

	
	
	
	
	
	
	public ArrayList<Product> mainSelectListProduct(){
		Connection conn = getConnection();
		
		ArrayList<Product> list = new ProductDao().mainSelectListProduct(conn);
		close(conn);
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}//ProductService 클래스 end
