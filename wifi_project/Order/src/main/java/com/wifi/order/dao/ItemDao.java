package com.wifi.order.dao;

import java.util.List;
import java.util.Map;

import com.wifi.order.model.Item;
import com.wifi.order.model.ItemJoinRvs;
import com.wifi.order.model.MyItem;

public interface ItemDao {

	
//	공구 리스트 관련----------------------------------
	
	// 공구 리스트 - 최신순 정렬 (기본정렬)
	List<ItemJoinRvs> getItemlist();
	
	// 공구 리스트 - 평점순 정렬
	List<ItemJoinRvs> getItemlistSort();
	
	// 공구 상세보기
	ItemJoinRvs viewItem(int iidx);

	
	
//	공구 등록. 수정. 삭제 관련---------------------------
	
	// 공구 등록 
	int regItem(Item item);
	
	// 공구 등록 후 iidx 반환
	int regItemIidx(Map map);
	
	// 조회수 +1
	int viewCountUp(int iidx);

	// 공구 삭제
	int delItem(int iidx);
	
	

//	내 공구 판매현황 관련------------------------------
	
	// 내 판매글 
	List<MyItem> getMyItem(int midx);
	
	// 
	
	
	
	
	

	



}
