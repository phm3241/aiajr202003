package com.wifi.order.dao;

import java.util.List;

import com.wifi.order.model.Item;

public interface ItemDao {

	// 공구글 등록 
	int regItem(Item item);

	// 등록한 글 iidx 반환
	int getIidx(String title, int midx);

	// 공구글 상세보기
	Item viewItem(int iidx);

	// 공구리스트
	List<Item> getItemlist();
	

	// 공구글 삭제
//	int delItem(int iidx);



}
