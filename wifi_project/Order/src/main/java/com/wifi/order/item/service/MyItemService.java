package com.wifi.order.item.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.MyItemlist;

@Service
public class MyItemService {

	private ItemDao dao;
	
	@Autowired
	private SqlSessionTemplate template;

	
	public List<MyItemlist> getMyItem(int midx) {
		
		dao = template.getMapper(ItemDao.class);
		System.out.println("내 판매글 리스트  service");
		
		return dao.getMyItem(midx);
	}
	
	

	
	
	
}
