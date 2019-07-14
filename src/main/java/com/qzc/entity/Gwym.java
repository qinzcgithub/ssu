package com.qzc.entity;

import java.io.Serializable;

public class Gwym implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1090281240156390671L;
	private Long Job_ID ;//岗位Id
	private Long ymbh ;//岗位权限ID
	public Gwym() {
	}
	public Gwym(Long jobID, Long ymbh) {
		super();
		Job_ID = jobID;
		this.ymbh = ymbh;
	}
	public Long getJob_ID() {
		return Job_ID;
	}
	public void setJob_ID(Long jobID) {
		Job_ID = jobID;
	}
	public Long getYmbh() {
		return ymbh;
	}
	public void setYmbh(Long ymbh) {
		this.ymbh = ymbh;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
