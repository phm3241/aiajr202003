package com.wifi.order.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wifi.order.model.Item;
import com.wifi.order.service.ItemRegService;

@RestController
@RequestMapping("/item")
public class ItemController {
	
	@Autowired
	ItemRegService itemReg;
	

	
	// 판매글 등록
	@PostMapping
	public Item itemReg(HttpSession midx, Item item) {
		
		return itemReg.regItem(item);
	}
	
	// 판매글 수정
	
	
	// 판매글 삭제
	
	
	
	// 판매글 리스트
	
	// 판매글 상세보기
	
	// 판매글 리스트 - 내가 작성한
	
	// 판매글 리스트 : 정렬(최신순)

	// 판매글 리스트 : 정렬(평점순)
	
	// 판매글 검색 : 
	

}
