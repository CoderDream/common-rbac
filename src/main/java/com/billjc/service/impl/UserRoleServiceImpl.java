package com.billjc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billjc.dao.UserRoleMapper;
import com.billjc.model.UserRole;
import com.billjc.service.UserRoleService;

@Service
public class UserRoleServiceImpl implements UserRoleService {
	
	@Autowired
	private UserRoleMapper userRoleMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		return userRoleMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(UserRole userRole) {
		return userRoleMapper.insert(userRole);
	}

	@Override
	public int insertSelective(UserRole userRole) {
		return userRoleMapper.insertSelective(userRole);
	}

	@Override
	public UserRole selectByPrimaryKey(Long id) {
		return userRoleMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(UserRole userRole) {
		return userRoleMapper.updateByPrimaryKeySelective(userRole);
	}

	@Override
	public int updateByPrimaryKey(UserRole userRole) {
		return userRoleMapper.updateByPrimaryKey(userRole);
	}

}
