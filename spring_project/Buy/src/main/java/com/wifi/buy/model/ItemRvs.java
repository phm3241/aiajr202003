package com.wifi.buy.model;

//구매자의 판매자 평점등록 모델
public class ItemRvs {

	private int irsidx;
	private int score_s;
	private int midx;
	private int iidx;

	public ItemRvs() {
	}

	public ItemRvs(int irsidx, int score_s, int midx, int iidx) {
		this.irsidx = irsidx;
		this.score_s = score_s;
		this.midx = midx;
		this.iidx = iidx;
	}
	
	public ItemRvs(int score_s, int midx, int iidx) {
		this.score_s = score_s;
		this.midx = midx;
		this.iidx = iidx;
	}

	public int getIrsidx() {
		return irsidx;
	}

	public void setIrsidx(int irsidx) {
		this.irsidx = irsidx;
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
		return "ItemRvs [irsidx=" + irsidx + ", score_s=" + score_s + ", midx=" + midx + ", iidx=" + iidx + "]";
	}

}
