package com.wifi.order.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.wifi.order.model.Itemlist;
import com.wifi.order.model.ItemRegRequest;
import com.wifi.order.model.Item_rvb;
import com.wifi.order.model.MyBuyerlist;
import com.wifi.order.model.MyItemlist;
import com.wifi.order.service.ItemDelService;
import com.wifi.order.service.ItemRegService;
import com.wifi.order.service.ItemViewService;
import com.wifi.order.service.ItemlistService;
import com.wifi.order.service.MyBuyerCntService;
import com.wifi.order.service.MyBuyerDelService;
import com.wifi.order.service.MyBuyerReviewService;
import com.wifi.order.service.MyItemBuyerService;
import com.wifi.order.service.MyItemHideService;
import com.wifi.order.service.MyItemService;
import com.wifi.order.service.itemlistSortService;

@RestController
@RequestMapping("/items")
public class ItemController {
	
//	공구 리스트 관련---------------------------------- 
	
	@Autowired
	ItemlistService itemlistService;

	@Autowired
	itemlistSortService itemlistSortService;

	@Autowired
	ItemViewService viewService;
	

//	공구 등록. 수정. 삭제 관련----------------------------------

	@Autowired
	ItemRegService regService;

	@Autowired
	ItemDelService delItemService;

	
//	내 공구 판매현황 관련----------------------------------
	
	@Autowired
	MyItemService myItemService;

	@Autowired
	MyItemBuyerService myBuyerService;
	
	@Autowired
	MyBuyerDelService delBuyerService;

	@Autowired
	MyBuyerCntService cntBuyerService;

	@Autowired
	MyBuyerReviewService rvBuyerService;
	
	@Autowired
	MyItemHideService hideService;
	
	
	
	

//	공구 리스트 관련---------------------------------- 
	
	// 공구 리스트 : 최신순 정렬
	@GetMapping
	public List<Itemlist> getItemlist(){
		
		return itemlistService.getItemlist();
	}
	
	
	// 공구 리스트 : 평점순 정렬
	@GetMapping("/sort")
	public List<Itemlist> getItemlistSort(){
		
		return itemlistSortService.getItemlistSort();
	}

	
	// 공구 상세보기
	@GetMapping("/{iidx}")
	public Itemlist viewItem(@PathVariable("iidx") int iidx) {
		
		return viewService.viewItem(iidx);
	};

	
	
	
	
//	공구 등록. 수정. 삭제 관련----------------------------------
	
	// 공구 등록 : item 등록후 iidx 반환
	@PostMapping
	public int regItem(HttpServletRequest request, ItemRegRequest itemRequest) {
		
		System.out.println("판매글 등록 controller");
		return regService.regItem(request, itemRequest);
	};
	
	
	// 공구글 수정
	
	
	// 공구글 삭제
	@DeleteMapping("/{iidx}")
	public int delItem(@PathVariable("iidx") int iidx) {
		
		System.out.println("내 판매글 삭제 controller");
		return delItemService.delItem(iidx); 
	};
	
	
	
	
//	내 공구 판매현황 관련----------------------------------
	
	// 내 판매글 
	@GetMapping("/myitem/{midx}")
	public List<MyItemlist> getMyItem(@PathVariable("midx") int midx){
		
		System.out.println("내 판매글 리스트 controller");
		return myItemService.getMyItem(midx);
		
	};
	
	// 내 판매글 참여자리스트 
	@GetMapping("/mybuyer/{iidx}")
	public List<MyBuyerlist> getMyItemBuyer(@PathVariable("iidx") int iidx){
		
		System.out.println("내 판매글 - 참여자리스트 controller");
		return myBuyerService.getMyItemBuyer(iidx);
		
	};
	
	// 나의 공구판매현황[모집중] - 현재 참여자수 
	@GetMapping("/mybuyerCnt/{iidx}")
	public int cntBuyer(@PathVariable("iidx") int iidx) {
		
		System.out.println("내 판매글 - 현재 참여자수 controller");
		return cntBuyerService.cntBuyer(iidx);
	};
	
	
	// 나의 공구판매현황[모집중] - 참여자 거절하기
	@DeleteMapping("/mybuyer/{iidx}/{buyer}")
	public int delBuyer(@PathVariable("iidx") int iidx, @PathVariable("buyer") int midx) {
		
		System.out.println("참여자 거절하기 controller");
		return delBuyerService.delBuyer(iidx, midx); 
	};
	
	
	// 나의 공구판매현황[판매완료] - 구매자 평점등록하기
	@PostMapping("/mybuyer/review")
	public int reviewBuyer(Item_rvb rvb) {
		
		System.out.println("구매자 평점등록 controller");
		return rvBuyerService.reviewBuyer(rvb); 
	};
	
	
	// 나의 공구판매현황[판매완료, 판매실패] - 내 판매글 숨김
	@PutMapping("/myitem/hide/{iidx}")
	public int hideMyItem(@PathVariable("iidx") int iidx) {
		
		System.out.println("내 판매글 숨김 controller");
		return hideService.hideMyItem(iidx); 
	};
	

	
	
	
	

	

}
