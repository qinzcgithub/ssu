package com.qzc.entity;

import java.io.Serializable;
import java.util.List;

/**
 * 分页
 * @author Qu
 * 处理分页同数据，同时存储当前页面数据
 *
 */
public class PageInfo<T> implements Serializable{

	
	private static final long serialVersionUID = 1L;
	
	private int curPage=1;                            //当前页
	private int pageSize=3;                          //每页显示几条数据
	private int totalRecord;                        //总记录数
	private int totalPage;                         //总页数
	private List<T> pageData;                     //当前页面数据
	private int from=0;                          //从哪条数据开始查询
	
	public PageInfo() {
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		curPage=curPage>0?curPage:1;
		this.curPage = curPage;
		this.from=(curPage-1)*this.pageSize;
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
		totalPage=(totalRecord%pageSize==0)?(totalRecord/pageSize):(totalRecord/pageSize+1);
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public List<T> getPageData() {
		return pageData;
	}

	public void setPagedata(List<T> pagedata) {
		this.pageData = pagedata;
	}

	public int getFrom() {
		return from;
	}

	public void setFrom(int from) {
		this.from = from;
	}

	
}
