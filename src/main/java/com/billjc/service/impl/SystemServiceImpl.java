package com.billjc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billjc.dao.SystemMapper;
import com.billjc.model.System;
import com.billjc.service.SystemService;

@Service
public class SystemServiceImpl implements SystemService {
	
	@Autowired
	private SystemMapper systemMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		return systemMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(System system) {
		return systemMapper.insert(system);
	}

	@Override
	public int insertSelective(System system) {
		return systemMapper.insertSelective(system);
	}

	@Override
	public System selectByPrimaryKey(Long id) {
		return systemMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(System system) {
		return systemMapper.updateByPrimaryKeySelective(system);
	}

	@Override
	public int updateByPrimaryKey(System system) {
		return systemMapper.updateByPrimaryKey(system);
	}

}
