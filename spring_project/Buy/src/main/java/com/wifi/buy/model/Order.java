package com.wifi.buy.model;

public class Order {
	
	private int oidx;
	private int midx;
	private int iidx;
	private int state;
	
	public Order() {
	}

	public Order(int oidx, int midx, int iidx) {
		this.oidx = oidx;
		this.midx = midx;
		this.iidx = iidx;
		this.state = 1;
	}
	
	public int getOidx() {
		return oidx;
	}
	public void setOidx(int oidx) {
		this.oidx = oidx;
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

	@Override
	public String toString() {
		return "Order [oidx=" + oidx + ", midx=" + midx + ", iidx=" + iidx + ", state=" + state + "]";
	}
	
	
	
	
}
