package com.wifi.order.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.order.dao.ItemDao;

@Service
public class MyBuyerDelService {
	
	private ItemDao dao;
	
	@Autowired
	private SqlSessionTemplate template;

	public int delmyBuyer(int iidx, int midx) {
		
		
		return dao.delmyBuyer(iidx, midx);
	};


}
