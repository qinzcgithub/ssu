package com.qzc;
 


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableTransactionManagement 
@MapperScan(basePackages="com.qzc.dao")
public class SsmDemoApplication { 
  
    public static void main(String[] args) { 
        SpringApplication.run(SsmDemoApplication.class, args);  
    }
}
