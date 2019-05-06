package com.qzc.util;

import java.util.concurrent.BlockingQueue;

import com.qzc.entity.Student;

public class ProduceData implements Runnable{
	BlockingQueue<Student> queue;
	private static int count=8;
	private static long tel=13512345644L;
	private int start;
	private int end;
	
	public ProduceData(BlockingQueue<Student> queue,int start,int end) {
		this.queue = queue;
		this.start = start;
		this.end = end;
	}
	
	@Override
	public void run() {
		for (int i = start; i < end; i++) {
			if (count>20) {
				count =8;
			}
			String [] addr={"北京","上海","天津","山西"};
			Student stu = new Student("张三"+count,count+"",addr[count%3],tel+"");
			try {
				queue.put(stu);
			} catch (InterruptedException e) {
				e.printStackTrace();
			};
			count++;
			tel++;
		}
	}

}
