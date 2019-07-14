package com.qzc.entity;

public class GwymModel extends Gwym{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1843458454537844393L;
	private String ymmc ;//子权限管理名称
	private String funcName ;//主权限管理名称
	public GwymModel() {
	}
	public GwymModel(String ymmc) {
		this.ymmc = ymmc;
	}
	public String getYmmc() {
		return ymmc;
	}
	public void setYmmc(String ymmc) {
		this.ymmc = ymmc;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public void setFuncName(String funcName) {
		this.funcName = funcName;
	}
	public String getFuncName() {
		return funcName;
	}
	
	
}
