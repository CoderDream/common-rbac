package com.billjc.service;

import com.billjc.model.Role;

public interface RoleService {

	int deleteByPrimaryKey(Long id);

	int insert(Role role);

	int insertSelective(Role role);

	Role selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(Role role);

	int updateByPrimaryKey(Role role);

}