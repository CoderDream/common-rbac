package com.billjc.service;

import com.billjc.model.System;

public interface SystemService {

	int deleteByPrimaryKey(Long id);

	int insert(System system);

	int insertSelective(System system);

	System selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(System system);

	int updateByPrimaryKey(System system);

}