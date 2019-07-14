package com.qzc.entity;

import java.io.Serializable;

/**
 * Pg(对应pi_group表)
 * @author Administrator
 */
public class Pg implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -4461765817147203570L;
	private Long groupid ;//巡检组id
	private String groupname ;//巡检组名称
	public Pg() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Pg(Long groupid, String groupname) {
		super();
		this.groupid = groupid;
		this.groupname = groupname;
	}
	public Long getGroupid() {
		return groupid;
	}
	public void setGroupid(Long groupid) {
		this.groupid = groupid;
	}
	public String getGroupname() {
		return groupname;
	}
	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
