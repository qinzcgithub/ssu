package com.qzc.entity;

import java.io.Serializable;
import java.util.Date;

import com.qzc.util.DateUtils;

/**
 * 银行设备
 * 对应bank_equipment表
 */
public class BankEqu implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -778074116473144041L;
	private String equipmentEachID ;//设备流水ID
	private String equipmentid ;//设备种类ID
	private String bankid ;//银行编号ID
	private Double equipmentValue ;//购入价格
	private Date equipmentBuyDate ;//购入时间
	private String status ;//设备状态
	private Double depreciationValue ;//设备折旧残值
	public BankEqu() {
	}
	
	public BankEqu(String equipmentEachID, String equipmentid, String bankid,
			Double equipmentValue, Date equipmentBuyDate, String status,
			Double depreciationValue) {
		super();
		this.equipmentEachID = equipmentEachID;
		this.equipmentid = equipmentid;
		this.bankid = bankid;
		this.equipmentValue = equipmentValue;
		this.equipmentBuyDate = equipmentBuyDate;
		this.status = status;
		this.depreciationValue = depreciationValue;
	}

	public String getEquipmentEachID() {
		return equipmentEachID;
	}

	public void setEquipmentEachID(String equipmentEachID) {
		this.equipmentEachID = equipmentEachID;
	}

	public String getEquipmentid() {
		return equipmentid;
	}

	public void setEquipmentid(String equipmentid) {
		this.equipmentid = equipmentid;
	}

	public String getBankid() {
		return bankid;
	}

	public void setBankid(String bankid) {
		this.bankid = bankid;
	}

	public Double getEquipmentValue() {
		return equipmentValue;
	}

	public void setEquipmentValue(Double equipmentValue) {
		this.equipmentValue = equipmentValue;
	}

	public Date getEquipmentBuyDate() {
		return equipmentBuyDate;
	}

	public String getEquipmentBuyDateStr() {
		if(equipmentBuyDate!=null){
			return DateUtils.dateToStr(DateUtils.YYMMDD_HHmmss_24, equipmentBuyDate);		
		}else{
			return "";
		}
	}
	
	public void setEquipmentBuyDate(Date equipmentBuyDate) {
		this.equipmentBuyDate = equipmentBuyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Double getDepreciationValue() {
		return depreciationValue;
	}

	public void setDepreciationValue(Double depreciationValue) {
		this.depreciationValue = depreciationValue;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "BankEqu [bankid=" + bankid + ", depreciationValue="
				+ depreciationValue + ", equipmentBuyDate=" + equipmentBuyDate
				+ ", equipmentEachID=" + equipmentEachID + ", equipmentValue="
				+ equipmentValue + ", equipmentid=" + equipmentid + ", status="
				+ status + "]";
	}

}
