package com.wifi.buy.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.buy.dao.OrderDao;

@Service
public class OrderCheckStateService {

	private OrderDao dao;

	@Autowired
	SqlSessionTemplate template;
	
	public int checkState(int midx, int iidx) {
		
		dao = template.getMapper(OrderDao.class);
		
		int duplicate = dao.checkDouble(midx, iidx);
		
		
		return duplicate;
	}
}
