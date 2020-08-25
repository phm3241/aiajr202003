package com.wifi.order.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.wifi.order.model.Item;
import com.wifi.order.model.ItemRegRequest;
import com.wifi.order.service.ItemRegService;
import com.wifi.order.service.ItemViewService;

@RestController
@RequestMapping("/item")
public class ItemController {
	
	@Autowired
	ItemRegService itemReg;

	@Autowired
	ItemViewService itemView;

	@Autowired
//	ItemDelService itemDel;
	

	
	// 공구글 등록
	@PostMapping
	public int itemReg(HttpServletRequest request, ItemRegRequest itemRequest) {
		
		return itemReg.regItem(request, itemRequest);
	}
	
	
	// 공구글 상세보기
	@GetMapping("/{iidx}")
	public Item itemView(@PathVariable("iidx") int iidx) {
		
		return itemView.viewItem(iidx);
	}
	
	
	// 공구글 수정
	
	
	// 공구글 삭제
//	@DeleteMapping("/iidx")
//	public int itemDel(@PathVariable("iidx") int iidx) {
//		
//		return itemDel.delItem(iidx); 
//	}
	
	
	
	// 공구글 리스트
	
	
	
	// 공구글 리스트 - 내가 작성한
	
	// 공구글 리스트 : 정렬(최신순)

	// 공구글 리스트 : 정렬(평점순)
	
	// 공구글 검색 : 
	

}
