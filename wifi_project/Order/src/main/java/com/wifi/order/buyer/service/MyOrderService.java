package com.wifi.order.buyer.service;

import java.util.ArrayList;
import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wifi.order.dao.OrderDao;
import com.wifi.order.model.Mylist;

//내 구매글 
@Service
public class MyOrderService {
	
	private OrderDao dao;
	
	@Autowired
	private SqlSessionTemplate template;

	public List<Mylist> getMyOrder(int midx) {
		
		dao = template.getMapper(OrderDao.class);
		System.out.println("내 구매글 service");
		
		List<Mylist> list = dao.getMyOrder(midx);
		
		
		for(int i=0; i<list.size(); i++) {
			
			// 참여상태. 결제상태 확인 ㅡ> 상태라벨 set
			int ostate = list.get(i).getOstate();
			int pstate = list.get(i).getPstate();
			
			if(ostate == 0 && pstate == -1) {
				list.get(i).setLabel("참여중");
				
			} else if(ostate == 1 && pstate == -1) {
				list.get(i).setLabel("다음기회에...");
				
			} else if(ostate == 0 && pstate == 0) {
				list.get(i).setLabel("구매자");
				
			} else if(ostate == 0 && pstate == 1) {
				list.get(i).setLabel("구매완료");
			}
			
		}
		
		return list;
	}



}
