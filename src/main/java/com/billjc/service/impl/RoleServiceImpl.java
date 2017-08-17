package com.billjc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billjc.dao.RoleMapper;
import com.billjc.model.Role;
import com.billjc.service.RoleService;

@Service
public class RoleServiceImpl implements RoleService {
	
	@Autowired
	private RoleMapper roleMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		return roleMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Role role) {
		return roleMapper.insert(role);
	}

	@Override
	public int insertSelective(Role role) {
		return roleMapper.insertSelective(role);
	}

	@Override
	public Role selectByPrimaryKey(Long id) {
		return roleMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(Role role) {
		return roleMapper.updateByPrimaryKeySelective(role);
	}

	@Override
	public int updateByPrimaryKey(Role role) {
		return roleMapper.updateByPrimaryKey(role);
	}

}
