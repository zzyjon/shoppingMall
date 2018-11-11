package com.lsm.web.common;

public class Pagenation {

	private int totalCount; // 전체 게시글 수
	private int currPage; // 현재 페이지 번호
	private int countPerPage = 9; // 한 페이지에 보여질 게시글 수
	private int countPerGroup = 5; // 한 페이지에 보여질 페잊 번호 개수 (그룹 갯수) 
	private int totalPage; // 전체 페이지 번호 개수
	private int startPageNum; // 현재 페이지 그룹의 시작 번호
	private int lastPageNum; // 페이지 구룹의 마지막 번호 
	private int offset;
	private int limit;
	
	public int getLimit() {
		return countPerPage;
	}
	public void setLimit(int limit) {
		this.limit = limit;
	}
	public int getOffset() {
		// 수정
		this.offset = (currPage-1)*countPerPage;
		return offset;
	}
	public void setOffset(int offset) {
		this.offset = offset;
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getCurrPage() {
		return currPage;
	}
	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}
	public int getCountPerPage() {
		return countPerPage;
	}
	public void setCountPerPage(int countPerPage) {
		this.countPerPage = countPerPage;
	}
	public int getCountPerGroup() {
		return countPerGroup;
	}
	public void setCountPerGroup(int countPerGroup) {
		this.countPerGroup = countPerGroup;
	}
	public int getTotalPage() {
		//수정
		this.totalPage = (totalCount/countPerPage) + ((totalCount % countPerPage > 0)? 1:0);
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartPageNum() {
		//수정
		this.startPageNum = ((currPage -1)/countPerGroup) * countPerGroup + 1;
		return startPageNum;
	}
	public void setStartPageNum(int startPageNum) {
		this.startPageNum = startPageNum;
	}
	public int getLastPageNum() {
		//수정
		this.lastPageNum = startPageNum + countPerGroup -1;
		
		if(lastPageNum > getTotalPage()) {
			lastPageNum = getTotalPage();
		}
		
		return lastPageNum;
	}
	public void setLastPageNum(int lastPageNum) {
		this.lastPageNum = lastPageNum;
	}
}
