package com.wifi.order.dao;

import java.util.List;
import java.util.Map;

import com.wifi.order.model.Item;
import com.wifi.order.model.Itemlist;
import com.wifi.order.model.Item_rvb;
import com.wifi.order.model.MyBuyerlist;
import com.wifi.order.model.MyItemlist;

public interface ItemDao {

	
//	공구 리스트 관련----------------------------------
	
	// 공구 리스트 - 최신순 정렬 (기본정렬)
	List<Itemlist> getItemlist();
	
	// 공구 리스트 - 평점순 정렬
	List<Itemlist> getItemlistSort();
	
	// 공구 상세보기
	Itemlist viewItem(int iidx);

	
	
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
	List<MyItemlist> getMyItem(int midx);
	
	// 내 판매글 참여자리스트
	List<MyBuyerlist> getMyItemBuyer(int iidx);
	
	// 나의 공구판매현황[모집중] - 현재 참여자수 
	int cntBuyer(int iidx);
	
	// 나의 공구판매현황[모집중] - 참여자 구매자로 선정하기
	int selectBuyer(int iidx,  List<Integer> buyer);
	
	// 나의 공구판매현황[모집중] - 참여자 거절하기
	int rejectBuyer(int iidx, int midx);

	// 나의 공구판매현황[판매완료] - 구매자 평점등록
	int reviewBuyer(Item_rvb rvb);

	// 나의 공구판매현황[판매완료, 판매실패] - 내 판매글 숨김
	int hideMyItem(int iidx);
	
	// QR보기
	String getQR(int iidx, int midx);
	


	

	
	// 
	
	
	
	
	

	



}
