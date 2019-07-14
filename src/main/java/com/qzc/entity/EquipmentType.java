package com.qzc.entity;

import java.io.Serializable;
/*
 * 银行设备类管理
 */
public class EquipmentType implements Serializable {
	private static final long serialVersionUID = -3806460216915811155L;
	private String equipmentTypeId;//设备种类的ID
	private String equipmentTypeName;//设备种类名字
	private int count;
	public EquipmentType() {
	}
	public EquipmentType(String equipmentTypeId, String equipmentTypeName,
			int count) {
		super();
		this.equipmentTypeId = equipmentTypeId;
		this.equipmentTypeName = equipmentTypeName;
		this.count = count;
	}
	public String getEquipmentTypeId() {
		return equipmentTypeId;
	}
	public void setEquipmentTypeId(String equipmentTypeId) {
		this.equipmentTypeId = equipmentTypeId;
	}
	public String getEquipmentTypeName() {
		return equipmentTypeName;
	}
	public void setEquipmentTypeName(String equipmentTypeName) {
		this.equipmentTypeName = equipmentTypeName;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int i) {
		this.count = i;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
