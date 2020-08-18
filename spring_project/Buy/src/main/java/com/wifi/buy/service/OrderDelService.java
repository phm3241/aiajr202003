package com.wifi.buy.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wifi.buy.dao.ItemDao;
import com.wifi.buy.dao.OrderDao;

@Service
public class OrderDelService {
	
	private OrderDao dao;
	private ItemDao itemDao;
	
	@Autowired
	private SqlSessionTemplate template;
	
	
	public int delOrder(int midx, int iidx, int button) {
		
		dao = template.getMapper(OrderDao.class);
		itemDao = template.getMapper(ItemDao.class);
		
		int result = 0;
		// 0 = waiting_cancle 1 = order_del
		if(button == 0) {
			result = dao.delOrder(midx, iidx);
			// item의 count_w에 1개 추가
			System.out.println("대기인원 빼기 전");
			itemDao.delWait(iidx);
			System.out.println("대기인원 뺀 후");
		} else if(button == 1) {
			//result = dao.delOrder(midx, iidx);
		}
		
		return result;
	}

}
