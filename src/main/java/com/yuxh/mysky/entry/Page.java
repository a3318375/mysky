package com.yuxh.mysky.entry;

import java.util.List;
import java.util.Map;

public class Page {

	private int pageNo; // 当前页码
	private int pageSize = 5; // 每页记录数
	private int totalRecord; // 总记录数
	private int totalPage; // 总页数
	private Map<String, String> params; // 查询条件
	private List<Article> pageList;
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public Map<String, String> getParams() {
		return params;
	}
	public void setParams(Map<String, String> params) {
		this.params = params;
	}
	public List<Article> getPageList() {
		return pageList;
	}
	public void setPageList(List<Article> pageList) {
		this.pageList = pageList;
	}
	
}
