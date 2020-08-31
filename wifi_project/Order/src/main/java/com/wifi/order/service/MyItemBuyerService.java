package com.wifi.order.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.MyBuyerlist;

@Service
public class MyItemBuyerService {

	private ItemDao dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<MyBuyerlist> getMyItemBuyer(int iidx) {
		
		dao = template.getMapper(ItemDao.class);
		System.out.println("내 판매글 - 참여자리스트  service");
		
		return dao.getMyItemBuyer(iidx);
	}

}
