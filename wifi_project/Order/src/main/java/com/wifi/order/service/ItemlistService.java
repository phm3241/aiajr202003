package com.wifi.order.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.Item;

@Service
public class ItemlistService {

	private ItemDao dao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	public List<Item> getItemlist() {
		
		dao = template.getMapper(ItemDao.class);
		
		return dao.getItemlist();
	}

}
