package com.wifi.order.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.wifi.order.model.ItemJoinRvs;
import com.wifi.order.model.ItemRegRequest;
import com.wifi.order.model.MyItemBuyer;
import com.wifi.order.model.MyItem;
import com.wifi.order.service.ItemDelService;
import com.wifi.order.service.ItemRegService;
import com.wifi.order.service.ItemViewService;
import com.wifi.order.service.ItemlistService;
import com.wifi.order.service.MyBuyerDelService;
import com.wifi.order.service.MyItemBuyerService;
import com.wifi.order.service.MyItemService;
import com.wifi.order.service.itemlistSortService;

@RestController
@RequestMapping("/items")
public class ItemController {
	
	@Autowired
	ItemlistService itemlistService;

	@Autowired
	itemlistSortService itemlistSortService;

	@Autowired
	ItemViewService viewService;

	@Autowired
	ItemRegService regService;

	@Autowired
	ItemDelService delItemService;

	@Autowired
	MyItemService myItemService;

	@Autowired
	MyItemBuyerService myBuyerService;
	
	@Autowired
	MyBuyerDelService delBuyerService;
	
	

//	공구 리스트 관련---------------------------------- 
	
	// 공구 리스트 : 최신순 정렬
	@GetMapping
	public List<ItemJoinRvs> getItemlist(){
		
		return itemlistService.getItemlist();
	}
	
	
	// 공구 리스트 : 평점순 정렬
	@GetMapping("/sort")
	public List<ItemJoinRvs> getItemlistSort(){
		
		return itemlistSortService.getItemlistSort();
	}

	
	// 공구 상세보기
	@GetMapping("/{iidx}")
	public ItemJoinRvs viewItem(@PathVariable("iidx") int iidx) {
		
		return viewService.viewItem(iidx);
	};

	
	
	
	
//	공구 등록. 수정. 삭제 관련----------------------------------
	
	// 공구 등록 : item 등록후 iidx 반환
	@PostMapping
	public int regItem(HttpServletRequest request, ItemRegRequest itemRequest) {
		
		System.out.println("공구글 등록 controller");
		return regService.regItem(request, itemRequest);
	};
	
	
	// 공구글 수정
	
	
	// 공구글 삭제
	@DeleteMapping("/{iidx}")
	public int delItem(@PathVariable("iidx") int iidx) {
		
		return delItemService.delItem(iidx); 
	};
	
	
	
	
//	내 공구 판매현황 관련----------------------------------
	
	// 내 판매글 
	@GetMapping("/myitem/{midx}")
	public List<MyItem> getMyItem(@PathVariable("midx") int midx){
		
		return myItemService.getMyItem(midx);
		
	};
	
	// 내 판매글 참여자리스트 
	@GetMapping("/myitem/buyer/{iidx}")
	public List<MyItemBuyer> getMyItemBuyer(@PathVariable("iidx") int iidx){
		
		return myBuyerService.getMyItemBuyer(iidx);
		
	};
	
	// 나의 공구판매현황[모집중] - 참여자 거절하기
	@DeleteMapping("/myitem/buyer/{iidx}/{buyer}")
	public int delmyBuyer(@PathVariable("iidx") int iidx, @PathVariable("buyer") int midx) {
		
		return delBuyerService.delmyBuyer(iidx, midx); 
	};

	

}
