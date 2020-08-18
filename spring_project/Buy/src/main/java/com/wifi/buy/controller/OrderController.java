package com.wifi.buy.controller;

import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.wifi.buy.model.ItemRvs;
import com.wifi.buy.model.MyOrder;
import com.wifi.buy.service.OrderCheckRemainService;
import com.wifi.buy.service.OrderDelService;
import com.wifi.buy.service.OrderListService;
//import com.wifi.buy.service.OrderQRService;
import com.wifi.buy.service.OrderRegRvsService;
import com.wifi.buy.service.OrderRegService;

@RestController
@RequestMapping(value = "/order")
public class OrderController {
	
	
//	공구글 상세페이지 :  참여신청 때  -------------------------------
	
	@Autowired   // 잔여 대기인원 확인
	private OrderCheckRemainService checkRemainService;
	
	@Autowired  // 참여신청하기
	private OrderRegService regService;
	
	
//	aside 공구참여현황  --------------------------------------------
	
	@Autowired    // 참여신청한 공구글 리스트 출력
	private OrderListService listService;
	
	@Autowired    // 참여신청 취소 처리
	private OrderDelService delService;
	
	//@Autowired    // QR코드 확인
	//private OrderQRService qrService;
	
	@Autowired    // 구매자의 판매자 평점등록
	private OrderRegRvsService regRvsService;
	
	
	
	
	
	
	
	
//	공구글 상세페이지 :  참여신청  --------------------------------------------
	
	
	// 잔여 대기인원 확인
	// 파라미터받기 : iidx, count_w
	// 테이블 : order
	// 결과값 : midx의 state이 1인 개수
	@GetMapping("/{iidx}/{count_w}")
	public int checkRemain(@PathVariable("count_w") int count_w, @PathVariable("iidx") int iidx) {

		return checkRemainService.checkRemain(iidx, count_w);
	}
	
	// 참여 되어있는지 중복체크 후 참여신청하기
	// 파라미터받기 : midx, iidx 
	// 테이블 : order
	// 결과값 : 등록처리결과 int
	@PostMapping("/{midx}/{iidx}")
	public int reg(HttpSession session, @PathVariable("iidx") int iidx, @PathVariable("midx") int midx) {
		
		//int midx = (int) session.getAttribute("midx");
		
		return regService.regOrder(midx, iidx);
	}
	
	
	
//	aside 공구참여현황  --------------------------------------------
	
	// 참여신청한 공구글 리스트 출력
	// 파라미터받기 : midx 
	// 테이블 : item, order
	// 결과값 : 제목, 글상태, 글상태 참여중일때 현재참여인원/구매정원
	@GetMapping("/{midx}")
	public List<MyOrder> getOrderList(HttpSession session, @PathVariable("midx") int midx){
		System.out.println("myorder controller");
		//int midx = (int) session.getAttribute("midx");
		List<MyOrder> myorder = listService.getOrderList(midx);
		System.out.println("myorder : "+myorder);
		
		return myorder ;
		//return listService.getOrderList(midx) ;
	}
	
	// 참여신청 취소 처리
	// 파라미터받기 : midx, iidx 
	// 테이블 : order
	// 결과값 : 취소처리결과 행 int
	@DeleteMapping("/{midx}/{iidx}/{button}")
	public int OrderDel(HttpSession session, @PathVariable("midx") int midx, @PathVariable("iidx") int iidx, @PathVariable("button") int button) {
		
		//int midx = (int) session.getAttribute("midx");
		
		return delService.delOrder(midx, iidx, button);
	}
	
	// QR코드 확인
//	@GetMapping("/{midx}")
//	public int getQR(HttpSession session, @PathVariable("iidx") int iidx) {
//		
//		int midx = (int) session.getAttribute("midx");
//		
//		return qrService.getQR(midx, iidx);
//	}
	
	
	
	
	// 구매자의 판매자 평점등록 : 상태라벨 '판매완료' 일때 가능
	@PostMapping
	public int regRvs(HttpSession session, ItemRvs rvs) {
		
		//int midx = (int) session.getAttribute("midx");
		System.out.println("regRvs 컨트롤러");
		
		return regRvsService.regRvs(rvs);
	}
	
} // class end
