package com.qzc.util;

import java.util.concurrent.BlockingQueue;



import com.qzc.dao.StudentMapper;
import com.qzc.entity.Student;

public class ConsumerData implements Runnable{
	BlockingQueue<Student> queue;
	
	StudentMapper studentMapper;
	public ConsumerData(BlockingQueue<Student> queue){
		this.queue=queue;
		studentMapper = BeanContext.getBean(StudentMapper.class);
	}
	 
	@Override
	public void run() {
		try {
			while(true){
				Student student = queue.take();
				int j = studentMapper.insertStudent(student);
				System.out.println(j);
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
}
