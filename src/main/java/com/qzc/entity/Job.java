package com.qzc.entity;
/**
 * 岗位
 * @author dz
 *
 */
public class Job  implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4586337769033200917L;
	private Long jobId;//岗位Id
	private Long groupId;//岗位组
	private String name;//岗位名字
	private String description;//岗位描述

    public Job() {
	}

	public Long getJobId() {
		return jobId;
	}

	public void setJobId(Long jobId) {
		this.jobId = jobId;
	}

	public Long getGroupId() {
		return groupId;
	}

	public void setGroupId(Long groupId) {
		this.groupId = groupId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}