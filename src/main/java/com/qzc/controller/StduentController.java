package com.qzc.controller;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.qzc.entity.Student;
import com.qzc.util.ConsumerData;
import com.qzc.util.ProduceData;

@RestController
@RequestMapping("student")
public class StduentController {
	
	@RequestMapping("insert")
	public void insertData(){
		BlockingQueue<Student> queue = new LinkedBlockingQueue<Student>(2000);
		ExecutorService pool = Executors.newFixedThreadPool(1000);
		for (int i = 1; i < 500; i++) {
			pool.execute(new ProduceData(queue,(i-1)*5000+1,i*5000));
			System.out.println("---------------------"+queue.size()+"=========="); 
		}
		for (int i = 0; i < 3000; i++) { 
			pool.execute(new ConsumerData(queue));
		}
	}
}
