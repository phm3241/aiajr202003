package com.wifi.order.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.Item;

@Service
public class ItemViewService {

	private ItemDao dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	
	public Item viewItem(int iidx) {
	
		dao = template.getMapper(ItemDao.class);
		
		return dao.viewItem(iidx);
	}

}
