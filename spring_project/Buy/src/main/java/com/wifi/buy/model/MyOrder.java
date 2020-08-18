package com.wifi.buy.model;

public class MyOrder {

	private int midx;
	private int iidx;
	private int state;
	private String title;

	public MyOrder() {
	}

	public MyOrder(int midx, int iidx, int state, String title) {
		this.midx = midx;
		this.iidx = iidx;
		this.state = state;
		this.title = title;
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

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "myorder [midx=" + midx + ", iidx=" + iidx + ", state=" + state + ", title=" + title + "]";
	}

}
