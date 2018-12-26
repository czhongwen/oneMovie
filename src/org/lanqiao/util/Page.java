package org.lanqiao.util;

public class Page {

	private int pageSize;		//每页条数
	private int currentPage;	//当前页数
	private int totalPage;		//总页数
	private int totalCount;		//总条数
	
	public Page() {
	}
	public Page(int pageSize, int currentPage) {
		this.pageSize = pageSize;
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalPage() {
		if(totalCount%pageSize==0) {
			return totalCount/pageSize;
		}else {
			return totalCount/pageSize+1;
		}
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	@Override
	public String toString() {
		return "Page [pageSize=" + pageSize + ", currentPage=" + currentPage + ", totalPage=" + totalPage
				+ ", totalCount=" + totalCount + "]";
	}

	
	
}
