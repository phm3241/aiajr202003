package com.wifi.order.dao;

import java.util.List;
import java.util.Map;

import com.wifi.order.model.Item;

public interface ItemDao {

	// 공구 리스트
	List<Item> getItemlist();

	// 공구 상세보기
	Item viewItem(int iidx);

	// 조회수 +1
	int viewCountUp(int iidx);

	// 공구 등록 
	int regItem(Item item);

	// 공구 등록 후 iidx 반환
	int regItemIidx(Map map);
	
	// 공구 삭제
	int delItem(int iidx);
	

	



}
