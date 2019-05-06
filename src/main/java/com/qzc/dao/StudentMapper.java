package com.qzc.dao;

import org.apache.ibatis.annotations.Param;

import com.qzc.entity.Student;

public interface StudentMapper {
	public int insertStudent(@Param("stu")Student stu);
}
