package com.qzc.entity;

import java.io.Serializable;

/**
 * 设备报修(对应fault_repair_type表)
 * @author Administrator
 *
 */
public class Frt implements Serializable{

	private static final long serialVersionUID = -580601766937127573L;
	private Long PITYPE_Id ;//报修设备Id
	private String PITYPE_Value ;//报修设备问题名称
	public Frt() {
	}
	public Frt(Long pITYPEId, String pITYPEValue) {
		PITYPE_Id = pITYPEId;
		PITYPE_Value = pITYPEValue;
	}
	public Long getPITYPE_Id() {
		return PITYPE_Id;
	}
	public void setPITYPE_Id(Long pITYPEId) {
		PITYPE_Id = pITYPEId;
	}
	public String getPITYPE_Value() {
		return PITYPE_Value;
	}
	public void setPITYPE_Value(String pITYPEValue) {
		PITYPE_Value = pITYPEValue;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
