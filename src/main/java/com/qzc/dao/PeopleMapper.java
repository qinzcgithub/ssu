package com.qzc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.qzc.entity.People;

public interface PeopleMapper{
	List<People> selectallpeople();
}
