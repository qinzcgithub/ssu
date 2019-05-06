package com.qzc.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;

import redis.clients.jedis.JedisPoolConfig;

@Configuration
public class JedisConUtil {
	
	@Value("${redis.hostName}")
	private String hostName;
	
	@Value("${redis.port}")
	private int port;
	
	@Value("${redis.password}")
	private String password;
	
	@Value("${redis.maxIdle}")
	private int maxIdle;
	
	@Value("${redis.maxTotal}")
	private int maxTotal;
	
	@Value("${redis.maxWaitMillis}")
	private int maxWaitMillis;
	
	@Bean
	public JedisPoolConfig jedisPoolConfig(){
		JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
		jedisPoolConfig.setMaxIdle(maxIdle);
		jedisPoolConfig.setMaxTotal(maxTotal);
		jedisPoolConfig.setMaxWaitMillis(maxWaitMillis);
		return jedisPoolConfig;
	}
	
	@Bean
	@Autowired
	public RedisConnectionFactory jedisConnectionFactory(JedisPoolConfig jedisPoolConfig){
		JedisConnectionFactory jedisFactory = new JedisConnectionFactory();
		jedisFactory.setHostName(hostName);
		jedisFactory.setPassword(password);
		jedisFactory.setPort(port);
		return jedisFactory;
	}
	
	@Bean
	@Autowired
	public RedisTemplate<String, String> redisTemplete(RedisConnectionFactory redisConnectionFactory){
		RedisTemplate<String,String> redisTemplate = new RedisTemplate<>();
		StringRedisSerializer redisSerializer = new StringRedisSerializer();
		redisTemplate.setConnectionFactory(redisConnectionFactory);
		redisTemplate.setKeySerializer(redisSerializer);
		return redisTemplate;
	}
	
}
