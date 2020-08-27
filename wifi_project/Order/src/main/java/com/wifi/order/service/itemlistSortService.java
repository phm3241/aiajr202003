package com.wifi.order.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.ItemJoinRvs;

@Service
public class itemlistSortService {

	private ItemDao dao;

	@Autowired
	private SqlSessionTemplate template;

	
	public List<ItemJoinRvs> getItemlistSort() {
		
		dao = template.getMapper(ItemDao.class);
		System.out.println("공구 리스트 평점순정렬  service");

		return dao.getItemlistSort();
	}

}
