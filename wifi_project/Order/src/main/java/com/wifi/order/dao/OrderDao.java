package com.wifi.order.dao;

import java.util.List;

import com.wifi.order.model.Mylist;

public interface OrderDao {
	
	// 내 구매글 
	List<Mylist> getMyOrder(int midx);
	
	// 공구 참여신청
	int regOrder(int midx, int iidx);

	// 공구 참여신청 전 체크1 - 참여자 중복확인 
	int checkOrderOverlap(int midx, int iidx);
	
	// 공구 참여신청 전 체크2 - 잔여인원 확인
	int checkItemRemain(int iidx);

	
	
	
	
	

}
