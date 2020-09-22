package com.wifi.order.model;

public class Messenger {
	
	private int senderMidx;
	private int receiverMidx;
	private int iidx;
	private String label;
	
	
	
	public Messenger() {
	}
	
	
	public Messenger(int senderMidx, int receiverMidx, int iidx, String label) {
		this.senderMidx = senderMidx;
		this.receiverMidx = receiverMidx;
		this.iidx = iidx;
		this.label = label;
	}


	public int getSenderMidx() {
		return senderMidx;
	}
	public void setSenderMidx(int senderMidx) {
		this.senderMidx = senderMidx;
	}
	public int getReceiverMidx() {
		return receiverMidx;
	}
	public void setReceiverMidx(int receiverMidx) {
		this.receiverMidx = receiverMidx;
	}
	public int getIidx() {
		return iidx;
	}
	public void setIidx(int iidx) {
		this.iidx = iidx;
	}
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}


	@Override
	public String toString() {
		return "Messenger [senderMidx=" + senderMidx + ", receiverMidx=" + receiverMidx + ", iidx=" + iidx + ", label="
				+ label + "]";
	}
	
	

	
	


}
