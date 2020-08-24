package com.wifi.order.model;

import java.sql.Timestamp;

// 공구글 정보
public class Item {
	
	private int iidx;				// 게시물 번호 -PK
	private String title;			// 게시글 제목
	private int price;				// 가격
	private int count_w;			// 대기 정원
	private int count_m;			// 모집 인원
	private Timestamp regdate;		// 게시글 등록일시(현재시간)
	private Timestamp receive;		// 물품수령일시
	private String addr;			// 판매처
	private String location;		// 좌표
	private String content;			// 게시글 본문
	private String photo;			// 첨부사진
	private int state;				// 게시글 현황
	private int view_count;			// 조회수
	private int midx;				// 작성자(회원번호) - FK
	private int category;			// 판매물품 카테고리 : 0 과일, 1 육류, 2 해산물, 3 채소, 4 생필품, 5 음료, 6 전체
	
	
	public Item() {
	}
	
	
	public Item(int iidx, String title, int price, int count_w, int count_m, Timestamp regdate, Timestamp receive,
			String addr, String location, String content, String photo, int state, int view_count, int midx,
			int category) {
		this.iidx = iidx;
		this.title = title;
		this.price = price;
		this.count_w = count_w;
		this.count_m = count_m;
		this.regdate = regdate;
		this.receive = receive;
		this.addr = addr;
		this.location = location;
		this.content = content;
		this.photo = photo;
		this.state = state;
		this.view_count = view_count;
		this.midx = midx;
		this.category = category;
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
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public int getCount_w() {
		return count_w;
	}
	
	public void setCount_w(int count_w) {
		this.count_w = count_w;
	}
	
	public int getCount_m() {
		return count_m;
	}
	
	public void setCount_m(int count_m) {
		this.count_m = count_m;
	}
	
	public Timestamp getRegdate() {
		return regdate;
	}
	
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	public Timestamp getReceive() {
		return receive;
	}
	
	public void setRedeive(Timestamp redeive) {
		this.receive = redeive;
	}
	
	public String getAddr() {
		return addr;
	}
	
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public String getLocation() {
		return location;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getPhoto() {
		return photo;
	}
	
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
	public int getState() {
		return state;
	}
	
	public void setState(int state) {
		this.state = state;
	}
	
	public int getView_count() {
		return view_count;
	}
	
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	
	public int getMidx() {
		return midx;
	}
	
	public void setMidx(int midx) {
		this.midx = midx;
	}
	
	public int getCategory() {
		return category;
	}
	
	public void setCategory(int category) {
		this.category = category;
	}
	
	
	
	
	
	@Override
	public String toString() {
		return "Item [iidx=" + iidx + ", title=" + title + ", price=" + price + ", count_w=" + count_w + ", count_m="
				+ count_m + ", regdate=" + regdate + ", receive=" + receive + ", addr=" + addr + ", location="
				+ location + ", content=" + content + ", photo=" + photo + ", state=" + state + ", view_count="
				+ view_count + ", midx=" + midx + ", category=" + category + "]";
	}

	
	
	
	
	
}
