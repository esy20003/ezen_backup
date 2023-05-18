package com.ezen.ticket.util;

public class Paging {
	private int page = 1;
	private int totalCount;
	private int beginPage;
	private int endPage;
	private int displayRow = 5;
	private int displayPage = 5;
	private boolean prev;
	private boolean next;
	private int startNum;
	private int endNum;

	private void paging() {
		double temp = (double) this.page / (double) this.displayPage;
		temp = Math.ceil(temp);
		this.endPage = (int) (temp * (double) this.displayPage);
		this.beginPage = this.endPage - (this.displayPage - 1);
		int totalPage = (int) Math.ceil((double) this.totalCount / (double) this.displayRow);
		if (totalPage < this.endPage) {
			this.endPage = totalPage;
			this.next = false;
		} else {
			this.next = true;
		}

		this.prev = this.beginPage != 1;
		this.startNum = (this.page - 1) * this.displayRow + 1;
		this.endNum = this.page * this.displayRow;
		System.out.println(
				this.beginPage + " " + this.endPage + " " + this.startNum + " " + this.endNum + " " + this.totalCount);
	}

	public int getPage() {
		return this.page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getTotalCount() {
		return this.totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		this.paging();
	}

	public int getBeginPage() {
		return this.beginPage;
	}

	public void setBeginPage(int beginPage) {
		this.beginPage = beginPage;
	}

	public int getEndPage() {
		return this.endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getDisplayRow() {
		return this.displayRow;
	}

	public void setDisplayRow(int displayRow) {
		this.displayRow = displayRow;
	}

	public int getDisplayPage() {
		return this.displayPage;
	}

	public void setDisplayPage(int displayPage) {
		this.displayPage = displayPage;
	}

	public boolean isPrev() {
		return this.prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return this.next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getStartNum() {
		return this.startNum;
	}

	public void setStartNum(int startNum) {
		this.startNum = startNum;
	}

	public int getEndNum() {
		return this.endNum;
	}

	public void setEndNum(int endNum) {
		this.endNum = endNum;
	}
}