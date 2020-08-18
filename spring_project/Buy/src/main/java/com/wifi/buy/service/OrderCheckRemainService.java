package com.wifi.buy.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.buy.dao.OrderDao;

@Service
public class OrderCheckRemainService {
	
	private OrderDao dao;

	@Autowired
	SqlSessionTemplate template;
	
	public int checkRemain(int iidx, int count_w) {
		dao = template.getMapper(OrderDao.class);
		
		int remain = dao.checkRemain(iidx);
		int result = count_w - remain;
		if(result > 0) {
			return 1;
		} else {
			return 0;
		}
	}
}
