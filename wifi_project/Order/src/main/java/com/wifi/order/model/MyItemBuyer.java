package com.wifi.order.model;

// 공구 구매자에 대한 평점정보 : 화면출력용
public class MyItemBuyer {
	
	private int iidx;			// 판매글 번호
	private int buyer;		  	// 구매자 번호 
	private String name;	  	// 구매자 이름 
	private int rvb_avg;		// 구매자 평점
	private int rvb_totalRow;	// 구매자 총 평점개수
	private int ostate;			// 구매자 주문상태값 : 0 참여중, 1 거절, -1 null
	private int pstate;			// 구매자 결제상태값 : 0 미수령, 1 수령, -1 null
	private String pr;			// 구매자 결제QR : -1 null
	
	
	public MyItemBuyer() {
	}


	public MyItemBuyer(int iidx, int buyer, String name, int rvb_avg, int rvb_totalRow, int ostate, int pstate,
			String pr) {
		this.iidx = iidx;
		this.buyer = buyer;
		this.name = name;
		this.rvb_avg = rvb_avg;
		this.rvb_totalRow = rvb_totalRow;
		this.ostate = ostate;
		this.pstate = pstate;
		this.pr = pr;
	}


	public int getIidx() {
		return iidx;
	}


	public void setIidx(int iidx) {
		this.iidx = iidx;
	}


	public int getBuyer() {
		return buyer;
	}


	public void setBuyer(int buyer) {
		this.buyer = buyer;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getRvb_avg() {
		return rvb_avg;
	}


	public void setRvb_avg(int rvb_avg) {
		this.rvb_avg = rvb_avg;
	}


	public int getRvb_totalRow() {
		return rvb_totalRow;
	}


	public void setRvb_totalRow(int rvb_totalRow) {
		this.rvb_totalRow = rvb_totalRow;
	}


	public int getOstate() {
		return ostate;
	}


	public void setOstate(int ostate) {
		this.ostate = ostate;
	}


	public int getPstate() {
		return pstate;
	}


	public void setPstate(int pstate) {
		this.pstate = pstate;
	}


	public String getPr() {
		return pr;
	}


	public void setPr(String pr) {
		this.pr = pr;
	}


	@Override
	public String toString() {
		return "MyItemBuyer [iidx=" + iidx + ", buyer=" + buyer + ", name=" + name + ", rvb_avg=" + rvb_avg
				+ ", rvb_totalRow=" + rvb_totalRow + ", ostate=" + ostate + ", pstate=" + pstate + ", pr=" + pr + "]";
	}


	
	
	
	
	
	
	
	
	
	
	
	
	

}
