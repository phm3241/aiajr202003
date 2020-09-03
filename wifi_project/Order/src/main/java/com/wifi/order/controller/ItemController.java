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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.wifi.order.model.Itemlist;
import com.wifi.order.item.service.ItemDelService;
import com.wifi.order.item.service.ItemRegService;
import com.wifi.order.item.service.ItemViewService;
import com.wifi.order.item.service.ItemlistService;
import com.wifi.order.item.service.MyBuyerCntService;
import com.wifi.order.item.service.MyBuyerRejectService;
import com.wifi.order.item.service.MyBuyerReviewService;
import com.wifi.order.item.service.MyBuyerSelectService;
import com.wifi.order.item.service.MyItemBuyerService;
import com.wifi.order.item.service.MyItemHideService;
import com.wifi.order.item.service.MyItemService;
import com.wifi.order.item.service.QRService;
import com.wifi.order.item.service.itemlistSortService;
import com.wifi.order.model.ItemRegRequest;
import com.wifi.order.model.Item_rvb;
import com.wifi.order.model.MyBuyerlist;
import com.wifi.order.model.MyItemlist;

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
	MyBuyerCntService cntBuyerService;
	
	@Autowired
	MyBuyerSelectService selectBuyerService;
	

	@Autowired
	MyBuyerRejectService rejectBuyerService;

	@Autowired
	QRService getQRService;
	
	
	@Autowired
	MyBuyerReviewService rvBuyerService;
	
	@Autowired
	MyItemHideService hideService;
	
	
	
	
	
	
	
	

//	공구 리스트 관련---------------------------------- 
	
	// 추천 공구 리스트 : 최신순 정렬
	@GetMapping("/recomItem")
	public List<Itemlist> getRecomItemlist(){
		
		return itemlistService.getRecomItemlist();
	}
	
	
	// 일반 공구 리스트 : 최신순 정렬
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
//	@PostMapping("/{iidx}")
//	public int editItem(@PathVariable("iidx") int iidx) {
//		
//		System.out.println("내 판매글 수정 controller");
//		return editItemService.editItem(iidx); 
//	};
	
	
	// 공구글 삭제
	@DeleteMapping("/{iidx}")
	public int delItem(@PathVariable("iidx") int iidx) {
		
		System.out.println("내 판매글 삭제 controller");
		return delItemService.delItem(iidx); 
	};
	
	
	
	
//	내 공구 판매현황 관련----------------------------------
	
	// 내 판매글 
	@GetMapping("/myitem/{login_midx}")
	public List<MyItemlist> getMyItem(@PathVariable("login_midx") int midx){
		
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
	
	
	// 나의 공구판매현황[모집중] - 참여자 구매자로 선정하기
	@PostMapping("/mybuyer/{iidx}")
	//public int selectBuyer(@PathVariable("iidx") int iidx, @RequestParam(value="buyerArr[]") List<Integer> buyer) {
	//public int selectBuyer(@RequestParam(value="iidx") int iidx, @RequestParam(value="buyerArr[]") List<Integer> buyer) {
	//public int selectBuyer(@RequestParam(value="iidx") int iidx) {
	//public int selectBuyer(@RequestBody ArrayList<Integer> buyerArr, @PathVariable("iidx") int iidx ) {
	//public int selectBuyer(@PathVariable("iidx") int iidx, @RequestParam(value = "buyerArr[]") Integer[] buyerArr) {
		public int selectBuyer(@PathVariable("iidx") int iidx, @RequestParam(value = "buyerArr[]") List<String> buyerArr) {
		
		//String[] buyer = request.getParameterValues("buyer");

		//String[] buyer = request.getParameterValues("buyer[]");
		
		//@RequestParam("iidx") int iidx, @RequestParam("mybuyer[]")  buyer 
		System.out.println("참여자 구매자로 선정 controller");
		System.out.println("iidx 확인 :" +iidx);
		System.out.println("buyer 배열확인 : " + buyerArr.toString());
//		for(int i=0; i<buyerArr.length; i++) {
//			System.out.println(buyerArr[i]);
//		}
		for(int i=0; i<buyerArr.size(); i++) {
			System.out.println(buyerArr.get(i));
		}
		
		return 0; 
		//return selectBuyerService.selectBuyer(iidx, buyer); 
	};
	
	
	
	// 나의 공구판매현황[모집중] - 참여자 거절하기
	@PutMapping("/mybuyer/{iidx}/{buyer}")
	public int rejectBuyer(@PathVariable("iidx") int iidx, @PathVariable("buyer") int midx) {
		
		System.out.println("참여자 거절 controller");
		return rejectBuyerService.rejectBuyer(iidx, midx); 
	};
	
	
	// 나의 공구판매현황[모집완료] - QR생성
//	@GetMapping("/qr/{iidx}/{buyer}")
//	public String insertQR(@PathVariable("iidx") int iidx, @PathVariable("buyer") int midx) {
//		
//		System.out.println("QR생성 controller");
//		return insesrtQRService.insertQR(iidx, midx); 
//	};
	
	
	
	// 나의 공구판매현황[모집완료] - QR보기
	@GetMapping("/qr/{iidx}/{buyer}")
	public String getQR(@PathVariable("iidx") int iidx, @PathVariable("buyer") int midx) {
		
		System.out.println("QR보기 controller");
		return getQRService.getQR(iidx, midx); 
	};
	
	
	// 나의 공구판매현황[판매완료] - 구매자 평점등록하기
	@PostMapping("/review")
	public int reviewBuyer(Item_rvb rvb) {
		
		System.out.println("구매자 평점등록 controller");
		return rvBuyerService.reviewBuyer(rvb); 
	};
	
	
	// 나의 공구판매현황[판매완료, 판매실패] - 내 판매글 숨김
	@PutMapping("/hide/{iidx}")
	public int hideMyItem(@PathVariable("iidx") int iidx) {
		
		System.out.println("내 판매글 숨김 controller");
		return hideService.hideMyItem(iidx); 
	};
	

	
	
	
	

	

}
