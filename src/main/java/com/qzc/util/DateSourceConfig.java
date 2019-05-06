package com.qzc.util;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.alibaba.druid.pool.DruidDataSource;
import javax.sql.DataSource;

@Configuration
public class DateSourceConfig {
	
	@Bean
	@ConfigurationProperties(prefix="spring.datasource")
	public DataSource dataSource(){
		DruidDataSource dataSource = new DruidDataSource();
		return dataSource;
	}
}
