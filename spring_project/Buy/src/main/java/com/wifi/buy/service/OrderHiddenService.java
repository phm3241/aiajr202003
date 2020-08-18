package com.wifi.buy.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.buy.dao.OrderDao;

@Service
public class OrderHiddenService {

	private OrderDao dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public int stateHidden(int midx, int iidx) {
		dao = template.getMapper(OrderDao.class);
		
		return dao.hide(midx, iidx);
	}
}
