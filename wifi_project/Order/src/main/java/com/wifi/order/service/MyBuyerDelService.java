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

	public int delBuyer(int iidx, int midx) {
		
		dao = template.getMapper(ItemDao.class);
		System.out.println("참여자 거절하기  service");
		
		return dao.delBuyer(iidx, midx);
	}



}
