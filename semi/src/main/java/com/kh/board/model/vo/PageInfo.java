package com.kh.board.model.vo;

public class PageInfo {

	private int listCount ; // 현재 총 게시글 개수
	private int currentPage ;  // 현재 페이지 (즉, 사용자가 요청한 페이지) 
	private int pageLimit; // 페이지 하단에 보여질 페이징 바의 페이지 최대개수(몇개 단위씩 보여줄건지)
	private int boardLimit; // 한페이지 내에서 보여질 게시글 최대 개수(몇개 단위씩)
	
	// 위의 4개를 가지고 아래 3개의 값을 구해낼꺼임
	private int maxPage ; // 가장 마지막 페이지 (총 페이지 수)
	private int startPage; // 페이징 바의 시작 수 
	private int endPage ; // 페이징 바의 끝 수
	
	
	public PageInfo() {}


	public PageInfo(int listCount, int currentPage, int pageLimit, int boardLimit, int maxPage, int startPage,
			int endPage) {
		super();
		this.listCount = listCount;
		this.currentPage = currentPage;
		this.pageLimit = pageLimit;
		this.boardLimit = boardLimit;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
	}


	public int getListCount() {
		return listCount;
	}


	public void setListCount(int listCount) {
		this.listCount = listCount;
	}


	public int getCurrentPage() {
		return currentPage;
	}


	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}


	public int getPageLimit() {
		return pageLimit;
	}


	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}


	public int getBoardLimit() {
		return boardLimit;
	}


	public void setBoardLimit(int boardLimit) {
		this.boardLimit = boardLimit;
	}


	public int getMaxPage() {
		return maxPage;
	}


	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}


	public int getStartPage() {
		return startPage;
	}


	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}


	public int getEndPage() {
		return endPage;
	}


	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}


	@Override
	public String toString() {
		return "PageInfo [listCount=" + listCount + ", currentPage=" + currentPage + ", pageLimit=" + pageLimit
				+ ", boardLimit=" + boardLimit + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage="
				+ endPage + "]";
	}


	
}
