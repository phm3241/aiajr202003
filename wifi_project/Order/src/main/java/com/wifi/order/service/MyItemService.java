package com.wifi.order.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wifi.order.dao.ItemDao;
import com.wifi.order.model.MyItem;

@Service
public class MyItemService {

	private ItemDao dao;
	
	@Autowired
	private SqlSessionTemplate template;

	
	public List<MyItem> getMyItem(int midx) {
		
		dao = template.getMapper(ItemDao.class);
		
		List<MyItem> myitem = dao.getMyItem(midx);
		
		for(int i=0; i<myitem.size(); i++) {
			
			int pidx = myitem.get(i).getPidx();
			int count_m = myitem.get(i).getCount_m();
			
			// pidx가 없으면 ㅡ> 모집중
			if(pidx == -1) {
				
				myitem.get(i).setStatelabel(0); 
			} else if(pidx) {
				
			}
			
			
			
			
			
			
		}
		
		
		return dao.getMyItem(midx);
	}
	
	

	
	
	
}
