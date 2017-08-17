package com.billjc.service;

import com.billjc.model.UserRole;

public interface UserRoleService {

	int deleteByPrimaryKey(Long id);

	int insert(UserRole userRole);

	int insertSelective(UserRole userRole);

	UserRole selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(UserRole userRole);

	int updateByPrimaryKey(UserRole userRole);

}