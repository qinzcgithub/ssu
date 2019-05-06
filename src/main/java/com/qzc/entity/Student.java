package com.qzc.entity;

import java.util.UUID;

public class Student {
	//学生主键id
	private String uuid;
	
	//学生名称
	private String name;
	
	//学生年龄
	private String age;
	
	//学生家庭住址
	private String addr;
	
	//学生电话
	private String tel;

	public Student() {
	}
	
	public Student(String name,String age,String addr,String tel){
		this.addr=addr;
		this.uuid=UUID.randomUUID().toString().replaceAll("-", "");
		this.age=age;
		this.tel=tel;
		this.name=name;
	}
	
	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	@Override
	public String toString() {
		return "Student [uuid=" + uuid + ", name=" + name + ", age=" + age + ", addr=" + addr + ", tel=" + tel + "]";
	}
	
}
