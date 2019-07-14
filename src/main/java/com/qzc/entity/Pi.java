package com.qzc.entity;

import java.io.Serializable;

/**
 * Pi(对应piwoker表)
 * @author Administrator
 *
 */
public class Pi implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6663410567081960609L;
	private Long wokerid ;//巡检工id
	private Long groupid ;//巡检工组id
	private String workname ;//巡检工姓名
	private String workertel1 ;//巡检工电话1
	private String workertel2 ;//巡检工电话2
	public Pi() {
	}
	public Pi(Long wokerid, Long groupid, String workname,
			String workertel1, String workertel2) {
		this.wokerid = wokerid;
		this.groupid = groupid;
		this.workname = workname;
		this.workertel1 = workertel1;
		this.workertel2 = workertel2;
	}
	public Long getWokerid() {
		return wokerid;
	}
	public void setWokerid(Long wokerid) {
		this.wokerid = wokerid;
	}
	public Long getGroupid() {
		return groupid;
	}
	public void setGroupid(Long groupid) {
		this.groupid = groupid;
	}
	public String getWorkname() {
		return workname;
	}
	public void setWorkname(String workname) {
		this.workname = workname;
	}
	public String getWorkertel1() {
		return workertel1;
	}
	public void setWorkertel1(String workertel1) {
		this.workertel1 = workertel1;
	}
	public String getWorkertel2() {
		return workertel2;
	}
	public void setWorkertel2(String workertel2) {
		this.workertel2 = workertel2;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
