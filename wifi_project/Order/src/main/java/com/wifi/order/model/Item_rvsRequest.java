package com.wifi.order.model;

// 공구 판매자에 대한 평점정보 : view에서 db로 등록할 때 
public class Item_rvsRequest {
	
	//private int irsidx;		// 공구판매자 평점번호 -PK
	private int score_s;	// 판매자 평점
	private int midx;		// 회원번호(평가자=구매자) -FK
	private int iidx;		// 게시물 번호 -FK
	
	
	public Item_rvsRequest() {
	}


	public Item_rvsRequest(int score_s, int midx, int iidx) {
		this.score_s = score_s;
		this.midx = midx;
		this.iidx = iidx;
	}


	public int getScore_s() {
		return score_s;
	}


	public void setScore_s(int score_s) {
		this.score_s = score_s;
	}


	public int getMidx() {
		return midx;
	}


	public void setMidx(int midx) {
		this.midx = midx;
	}


	public int getIidx() {
		return iidx;
	}


	public void setIidx(int iidx) {
		this.iidx = iidx;
	}


	@Override
	public String toString() {
		return "Item_rvs [score_s=" + score_s + ", midx=" + midx + ", iidx=" + iidx + "]";
	}

	
	
	

}
