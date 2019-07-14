package com.qzc.entity;

public class BankModel extends Bank{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1061931050654651783L;
	private int equCount ;
	public BankModel() {
	}
	public BankModel(int equCount) {
		this.equCount = equCount;
	}
	public int getEquCount() {
		return equCount;
	}
	public void setEquCount(int equCount) {
		this.equCount = equCount;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
