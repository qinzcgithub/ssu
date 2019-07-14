package com.qzc.entity;

public class DepartmentModel extends Department{
	/**
	 * 
	 */
	private static final long serialVersionUID = -3879941181802238478L;
	private String departmentName;//部门名
	private Integer userNo;//员工数量
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	public Integer getUserNo() {
		return userNo;
	}
	public void setUserNo(Integer userNo) {
		this.userNo = userNo;
	}
	
}
