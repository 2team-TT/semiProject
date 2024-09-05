package com.kh.property.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import static com.kh.common.JDBCTemplate.*;
import com.kh.common.model.vo.PageInfo;
import com.kh.property.model.vo.Property;

public class PropertyDao {
	
	private Properties prop = new Properties();
//	protected PreparedStatement pstmt;
//	protected ResultSet rset;
	
	public PropertyDao() {
		
		String filePath = PropertyDao.class.getResource("/db/sql/property-mapper.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public int selectPropertyListCount(Connection conn) {
		int ppListCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPropertyListCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				ppListCount = rset.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return ppListCount;
	}
	
	public ArrayList<Property> selectPropertyList(Connection conn, PageInfo pi){
		
		ArrayList<Property> ppList = new ArrayList<Property>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectPropertyList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (pi.getCurrentPage() - 1) * pi.getDetailLimit();
			int endRow = startRow + pi.getDetailLimit() - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ppList.add(new Property(rset.getInt("PP_NO"),
										rset.getString("PP_NAME"),
										rset.getInt("TAG_NO"),
										rset.getString("B_NAME"),
										rset.getString("PP_PRICE"),
										rset.getString("PP_LOCATION"),
										rset.getString("PP_OPTION"),
										rset.getString("PP_INFO"),
										rset.getString("PP_DATE"),
										rset.getInt("PD_NO"),
										rset.getInt("COST"),
										rset.getInt("FLOOR"),
										rset.getInt("PYEONG"),
										rset.getInt("ROOMS"),
										rset.getString("MOVE_DATE"),
										rset.getInt("PP_IMG_NO"),
										rset.getString("ORIGIN_NAME"),
										rset.getString("CHANGE_NAME"),
										rset.getString("FILEPATH")
						  )
				);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return ppList;
	}
	
}
