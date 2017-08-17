package com.billjc.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.billjc.model.Function;

public interface FunctionMapper {
	int deleteByPrimaryKey(Long id);

	int insert(Function record);

	int insertSelective(Function record);

	Function selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Function record);

	int updateByPrimaryKey(Function record);

	//Map<Integer, String> selectFunctonNamesByParams(@Param("workId") String workId);
	List<Function> selectFunctonNamesByParams(@Param("workId") String workId);
}