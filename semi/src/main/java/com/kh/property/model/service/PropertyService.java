package com.kh.property.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static com.kh.common.JDBCTemplate.*;

import com.kh.common.model.vo.PageInfo;
import com.kh.property.model.dao.PropertyDao;
import com.kh.property.model.vo.Property;

public class PropertyService {
	
	protected Connection conn = getConnection();
	
	public int selectPropertyListCount() {
		int ppListCount = new PropertyDao().selectPropertyListCount(conn);
		close(conn);
		return ppListCount;
	}
	
	public ArrayList<Property> selectPropertyList(PageInfo pi){
		ArrayList<Property> ppList = new PropertyDao().selectPropertyList(conn, pi);
		close(conn);
		return ppList;
	}
	
}
