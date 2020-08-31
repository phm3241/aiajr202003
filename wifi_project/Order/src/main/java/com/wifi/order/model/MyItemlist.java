package com.wifi.order.model;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonFormat;

// 내 공구 판매현황 정보 (view)
public class MyItemlist {
	
	private int seller;				// 판매자 midx 
	private int iidx;				// 게시물 번호 
	private String title;			// 게시글 제목
	private int count_m;			// 모집 인원
	private int count_w;			// 대기 정원
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "Asia/Seoul")
	private Timestamp receive;		// 물품수령일시
	private int receive_check;		// 오늘기준 마감 확인
	private int category;			// 판매물품 카테고리 : 0 과일, 1 육류, 2 해산물, 3 채소, 4 생필품, 5 음료, 6 전체
	private int istate;				// 주문번호
	private int buyer;				// 참여자 midx
	private int oidx;				// 주문번호
	private int ostate;				// 참여 상태 : 0 참여중 1 거절
	private int pidx;				// 결제 번호
	private int pstate;				// 결제 상태 : 0 미수령 1 수령
	private String qr;					// 결제 QR
	
	
	public MyItemlist() {
	}


	public MyItemlist(int seller, int iidx, String title, int count_m, int count_w, Timestamp receive, int receive_check,
			int category, int istate, int buyer, int oidx, int ostate, int pidx, int pstate, String qr) {
		this.seller = seller;
		this.iidx = iidx;
		this.title = title;
		this.count_m = count_m;
		this.count_w = count_w;
		this.receive = receive;
		this.receive_check = receive_check;
		this.category = category;
		this.istate = istate;
		this.buyer = buyer;
		this.oidx = oidx;
		this.ostate = ostate;
		this.pidx = pidx;
		this.pstate = pstate;
		this.qr = qr;
	}


	public int getSeller() {
		return seller;
	}


	public void setSeller(int seller) {
		this.seller = seller;
	}


	public int getIidx() {
		return iidx;
	}


	public void setIidx(int iidx) {
		this.iidx = iidx;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public int getCount_m() {
		return count_m;
	}


	public void setCount_m(int count_m) {
		this.count_m = count_m;
	}


	public int getCount_w() {
		return count_w;
	}


	public void setCount_w(int count_w) {
		this.count_w = count_w;
	}


	public Timestamp getReceive() {
		return receive;
	}


	public void setReceive(Timestamp receive) {
		this.receive = receive;
	}


	public int getReceive_check() {
		return receive_check;
	}


	public void setReceive_check(int receive_check) {
		this.receive_check = receive_check;
	}


	public int getCategory() {
		return category;
	}


	public void setCategory(int category) {
		this.category = category;
	}


	public int getIstate() {
		return istate;
	}


	public void setIstate(int istate) {
		this.istate = istate;
	}


	public int getBuyer() {
		return buyer;
	}


	public void setBuyer(int buyer) {
		this.buyer = buyer;
	}


	public int getOidx() {
		return oidx;
	}


	public void setOidx(int oidx) {
		this.oidx = oidx;
	}


	public int getOstate() {
		return ostate;
	}


	public void setOstate(int ostate) {
		this.ostate = ostate;
	}


	public int getPidx() {
		return pidx;
	}


	public void setPidx(int pidx) {
		this.pidx = pidx;
	}


	public int getPstate() {
		return pstate;
	}


	public void setPstate(int pstate) {
		this.pstate = pstate;
	}


	public String getQr() {
		return qr;
	}


	public void setQr(String qr) {
		this.qr = qr;
	}


	@Override
	public String toString() {
		return "MyItem [seller=" + seller + ", iidx=" + iidx + ", title=" + title + ", count_m=" + count_m
				+ ", count_w=" + count_w + ", receive=" + receive + ", receive_check=" + receive_check + ", category="
				+ category + ", istate=" + istate + ", buyer=" + buyer + ", oidx=" + oidx + ", ostate=" + ostate
				+ ", pidx=" + pidx + ", pstate=" + pstate + ", qr=" + qr + "]";
	}

	
	
	
	
	
}
