package com.qzc.entity;

import java.io.Serializable;

/**
 * 银行网点管理
 *	对应表bank
 */
public class Bank implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -3252497709091900820L;
	private String bankId ;//银行id
	private String bankName ;//银行名称
	private Double bankLongitude ;//银行经度
	private Double bankLatitude ;//银行纬度
	private String bankIP ;//银行网点
	public Bank() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Bank(String bankId, String bankName, Double bankLongitude,
			Double bankLatitude, String bankIP) {
		super();
		this.bankId = bankId;
		this.bankName = bankName;
		this.bankLongitude = bankLongitude;
		this.bankLatitude = bankLatitude;
		this.bankIP = bankIP;
	}
	public String getBankId() {
		return bankId;
	}
	public void setBankId(String bankId) {
		this.bankId = bankId;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public Double getBankLongitude() {
		return bankLongitude;
	}
	public void setBankLongitude(Double bankLongitude) {
		this.bankLongitude = bankLongitude;
	}
	public Double getBankLatitude() {
		return bankLatitude;
	}
	public void setBankLatitude(Double bankLatitude) {
		this.bankLatitude = bankLatitude;
	}
	public String getBankIP() {
		return bankIP;
	}
	public void setBankIP(String bankIP) {
		this.bankIP = bankIP;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
