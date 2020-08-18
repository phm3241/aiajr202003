package com.wifi.buy.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.buy.dao.OrderDao;
import com.wifi.buy.model.ItemRvs;

@Service
public class OrderRegRvsService {
	
	private OrderDao dao;
	
	@Autowired
	private SqlSessionTemplate template;

	public int regRvs(ItemRvs rvs) {
		
		dao = template.getMapper(OrderDao.class);
		
		return dao.regRvs(rvs);
	}
	

}
