package com.wifi.order.dao;

import com.wifi.order.model.Item;

public interface ItemDao {

	// 공구글 등록 
	int regItem(Item item);

	// 공구글 상세보기
	Item viewItem(int iidx);

	// 공구글 삭제
//	int delItem(int iidx);



}
