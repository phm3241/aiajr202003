package com.wifi.buy.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.buy.dao.ItemDao;
import com.wifi.buy.dao.OrderDao;

@Service
public class OrderRegService {
	
	private OrderDao dao;
	private ItemDao itemDao;
	
	@Autowired
	private SqlSessionTemplate template;

	public int regOrder(int midx, int iidx) {
		dao = template.getMapper(OrderDao.class);
		itemDao = template.getMapper(ItemDao.class);
		
		int result = 0;
		int duplicate = dao.checkDouble(midx, iidx);
		
		if(duplicate > 0) {
			result = 0;
		} else {
			result = dao.regOrder(midx, iidx);
			
			// item의 count_w에 1개 추가
			itemDao.addWait(iidx);
		}
		
		
		return result;
	}
	
	
}
