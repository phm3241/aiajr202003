package com.wifi.buy.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.buy.dao.OrderDao;

@Service
public class OrderQRService {
	
	private OrderDao dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	// 큐알은 어떻게 받는겨? QR model로 받는감?
	public int getQR(int midx, int iidx) {
		
		dao = template.getMapper(OrderDao.class);
		
		return dao.getQR(midx, iidx);
	}
	
	
	
	
	
}
