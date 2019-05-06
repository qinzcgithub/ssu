package com.qzc.controller; 

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.qzc.dao.PeopleMapper;
import com.qzc.entity.People;
 
@RestController
@RequestMapping(value="/people")
public class PeopleController{
	@Autowired 
	PeopleMapper peopleMapper; 
	
	@Autowired
	RedisTemplate redisTemplete;

	@RequestMapping("all") 
	public void getAllPeople(HttpServletResponse response){
		List<People> allPeople = peopleMapper.selectallpeople();
		redisTemplete.opsForValue().set("ac", allPeople.toString());
		Object object = redisTemplete.opsForValue().get("ac");
		System.out.println(object);
		try {
			response.getWriter().write(allPeople.toString());
			response.flushBuffer();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
