package com.wifi.order.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.Item;

//공구글 등록 
@Service
public class ItemRegService {
	
	private ItemDao dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public Item regItem(Item item) {
		
		dao = template.getMapper(ItemDao.class);
		
		
		return dao.regItem(item);
	}

}
