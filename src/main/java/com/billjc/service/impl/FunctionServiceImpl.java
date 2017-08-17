package com.billjc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billjc.dao.FunctionMapper;
import com.billjc.model.Function;
import com.billjc.service.FunctionService;

@Service
public class FunctionServiceImpl implements FunctionService {

	@Autowired
	private FunctionMapper functionMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		return functionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Function function) {
		return functionMapper.insert(function);
	}

	@Override
	public int insertSelective(Function function) {
		return functionMapper.insertSelective(function);
	}

	@Override
	public Function selectByPrimaryKey(Long id) {
		return functionMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Function function) {
		return functionMapper.updateByPrimaryKeySelective(function);
	}

	@Override
	public int updateByPrimaryKey(Function function) {
		return functionMapper.updateByPrimaryKey(function);
	}

	@Override
	public List<Function> selectFunctonNamesByParams(String workId) {
		return functionMapper.selectFunctonNamesByParams(workId);
	}

}
