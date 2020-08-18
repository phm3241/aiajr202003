package com.wifi.buy.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.buy.dao.OrderDao;
import com.wifi.buy.model.MyOrder;

@Service
public class OrderListService {
	
	private OrderDao dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<MyOrder> getOrderList(int midx){
		dao = template.getMapper(OrderDao.class);
		
		return dao.getOrderList(midx);
	}
	
}
