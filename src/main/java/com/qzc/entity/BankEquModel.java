package com.qzc.entity;

import java.util.Date;

public class BankEquModel extends BankEqu{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6826015305637800500L;
	private String equname ;
	private String bankname ;
	public BankEquModel() {
		super();
	}
	public BankEquModel(String equipmentEachID, String equipmentid,
			String bankid, Double equipmentValue, Date equipmentBuyDate,
			String status, Double depreciationValue) {
		super(equipmentEachID, equipmentid, bankid, equipmentValue, equipmentBuyDate,
				status, depreciationValue);
	}
	public String getEquname() {
		return equname;
	}
	public void setEquname(String equname) {
		this.equname = equname;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
