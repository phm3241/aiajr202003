package com.wifi.order.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.MyItemBuyer;

@Service
public class MyItemBuyerService {

	private ItemDao dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<MyItemBuyer> getMyItemBuyer(int iidx) {
		
		dao = template.getMapper(ItemDao.class);
		
		return dao.getMyItemBuyer(iidx);
	}

}
