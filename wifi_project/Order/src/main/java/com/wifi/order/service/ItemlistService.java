package com.wifi.order.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.Item;
import com.wifi.order.model.Itemlist;

@Service
public class ItemlistService {

	private ItemDao dao;

	@Autowired
	private SqlSessionTemplate template;

	
	public List<Itemlist> getItemlist() {

		dao = template.getMapper(ItemDao.class);
		System.out.println("공구 리스트 최신순정렬  service");

		return dao.getItemlist();
	};

};
