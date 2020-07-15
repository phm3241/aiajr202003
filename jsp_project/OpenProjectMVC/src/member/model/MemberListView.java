package member.model;

import java.util.List;

public class MemberListView {
	
	// 전체 멤버의 수
	private int memberTotalCount;

	// 현재 페이지 번호
	private int currentPageNumber;

	// 멤버 리스트
	private List<Member> memberList;

	// 전체 페이지의 개수
	private int pageTotalCount;

	// 페이지당 표현 멤버의 개수
	private int memberCountPerpage;

	// 리스트의 시작행
	private int startRow;
	
	
	
	public MemberListView(int memberTotalCount, int currentPageNumber, List<Member> memberList, 
			int memberCountPerpage, int startRow) {
		this.memberTotalCount = memberTotalCount;
		this.currentPageNumber = currentPageNumber;
		this.memberList = memberList;
		this.memberCountPerpage = memberCountPerpage;
		this.startRow = startRow;
		
		// 필요한 페이지수 계산 
		calTotalPageCount(); 
		
	}



	// 필요한 페이지수 계산
	private void calTotalPageCount() {
		if( memberTotalCount == 0 ) {
			pageTotalCount = 0;
		} else {
			// 전체 게시물 수를 보여질 페이지 수로 나눠주기.
			pageTotalCount = memberTotalCount/memberCountPerpage;
			// 나누었을 때 나머지가 있다면, 페이지 하나 추가.
			if(memberTotalCount % memberCountPerpage > 0) {
				pageTotalCount++;
			};
			
		}; //else end
	}; //calTotalPageCount method end


	
	// 전체 게시물의 개수가 비어있는지 확인.
	public boolean isEmpty() {
		return memberTotalCount == 0;
	}



	public int getMemberTotalCount() {
		return memberTotalCount;
	}



	public int getCurrentPageNumber() {
		return currentPageNumber;
	}



	public List<Member> getMemberList() {
		return memberList;
	}



	public int getPageTotalCount() {
		return pageTotalCount;
	}



	public int getMemberCountPerpage() {
		return memberCountPerpage;
	}



	public int getStartRow() {
		return startRow;
	}



	@Override
	public String toString() {
		return "MemberListView [memberTotalCount=" + memberTotalCount + ", currentPageNumber=" + currentPageNumber
				+ ", memberList=" + memberList + ", pageTotalCount=" + pageTotalCount + ", memberCountPerpage="
				+ memberCountPerpage + ", startRow=" + startRow + "]";
	};
	
	
	
	
	
	
	

}
