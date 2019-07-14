package com.qzc.dao;

import com.qzc.entity.Function;
import com.qzc.entity.User;
import com.qzc.entity.Xtymb;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 
 * @author Qu
 *
 */
public interface LoginMapper {

	public User findUser(@Param("loginId") String loginId,@Param("loginId") String loginPassword);

	public List<Function> findFunctionsByJobId(@Param("jobId")Long jobId);

	public List<Xtymb> findXtymbList(@Param("jobId")long jobId,@Param("funcId") long funcId);


	

	

}
