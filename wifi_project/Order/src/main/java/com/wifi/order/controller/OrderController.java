package com.wifi.order.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.wifi.order.buyer.service.MyOrderService;
import com.wifi.order.buyer.service.RegOrderService;
import com.wifi.order.model.Mylist;

@RestController
@RequestMapping("/orders")
public class OrderController {
	
	
	@Autowired
	MyOrderService myOrderService;
	
	
	@Autowired
	private RegOrderService regService;
	
	
	
	
	
	
//	내 공구 구매현황 관련----------------------------------
	
	// 내 구매글 
	@GetMapping("/{login_midx}")
	public List<Mylist> getMyOrder(HttpSession session, @PathVariable("login_midx") int midx){
		
		//int midx = (int) session.getAttribute("midx");
		System.out.println("내 구매글 controller");
		return myOrderService.getMyOrder(midx);
		
	}
	
	
	// 공구 참여신청
	@PostMapping("/{login_midx}/{iidx}")
	public int regOrder(HttpSession session, @PathVariable("login_midx") int midx, @PathVariable("iidx") int iidx) {
		
		//int midx = (int) session.getAttribute("midx");
		System.out.println("공구 참여신청 controller");
		return regService.regOrder(midx, iidx);
	};
	
	
	// 나의 공구구매현황[참여중] - 참여취소
	//public 
	
	// 나의 공구구매현황[다음기회에..] - 글삭제

	
	// 나의 공구구매현황[다음기회에..] - 글숨김

	
	
	
	
	
	

};
