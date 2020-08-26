package com.wifi.order.service;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.org.glassfish.gmbal.ParameterNames;
import com.wifi.order.dao.ItemDao;

@Service
public class ItemRegIidxService {
	
	private ItemDao dao;

	@Autowired
	private SqlSessionTemplate template;
	
	public int regItemIidx(@Param("title") String title, @Param("midx") int midx) {
		
		
		return midx;
		
	}

}
