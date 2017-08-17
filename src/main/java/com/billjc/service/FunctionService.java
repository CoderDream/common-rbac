package com.billjc.service;

import java.util.List;

import com.billjc.model.Function;

public interface FunctionService {

	int deleteByPrimaryKey(Long id);

	int insert(Function function);

	int insertSelective(Function function);

	Function selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Function function);

	int updateByPrimaryKey(Function function);

	List<Function> selectFunctonNamesByParams(String workId);
}