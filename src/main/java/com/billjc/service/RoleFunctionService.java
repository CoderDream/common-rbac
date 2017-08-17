package com.billjc.service;

import com.billjc.model.RoleFunction;

public interface RoleFunctionService {

	int deleteByPrimaryKey(Long id);

	int insert(RoleFunction roleFunction);

	int insertSelective(RoleFunction roleFunction);

	RoleFunction selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(RoleFunction roleFunction);

	int updateByPrimaryKey(RoleFunction roleFunction);

}