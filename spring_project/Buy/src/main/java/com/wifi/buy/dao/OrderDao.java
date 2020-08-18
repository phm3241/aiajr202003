package com.wifi.buy.dao;

import java.util.List;

import com.wifi.buy.model.ItemRvs;
import com.wifi.buy.model.MyOrder;

public interface OrderDao {
	
	
	
//	공구글 상세페이지 :  참여신철할 때  --------------------------------
	
	// 참여신청시 해당글의 잔여 참여인원 확인
	int checkRemain(int iidx);
	
	// 신청자 중복체크
	int checkDouble(int midx, int iidx);
	
	// 참여신청
	int regOrder(int midx, int iidx);

	
	
	
//	aside 공구참여현황  --------------------------------------------

	// 나의 공구참여현황 리스트
	List<MyOrder> getOrderList(int midx);
	
	//List<MyOrder> getOrderList();
	
	// 공구참여현황 리스트에서 해당주문글 숨김처리
	int hide(int midx, int iidx);

	// 참여신청 취소
	int delOrder(int midx, int iidx);
	
	// 구매자의 판매자 평점등록
	int regRvs(ItemRvs rvs);

	
	// QR코드 확인
	int getQR(int midx, int iidx);
	
	
	

}
