package com.kh.kass.common;

import lombok.Data;

@Data
public class PageInfo {
	private int currentPage;
	private int listCount;
	private int pageLimit;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int boadLimit;
	
	public PageInfo(int currentPage, int listCount, int pageLimit, int maxPage, int startPage, int endPage,
			int boadLimit) {
		super();
		this.currentPage = currentPage;
		this.listCount = listCount;
		this.pageLimit = pageLimit;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.boadLimit = boadLimit;
	}
	
}
