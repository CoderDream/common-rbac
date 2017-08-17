package com.billjc.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.billjc.dao.RoleFunctionMapper;
import com.billjc.model.RoleFunction;
import com.billjc.service.RoleFunctionService;

@Service
public class RoleFunctionServiceImpl implements RoleFunctionService {
	
	@Autowired
	private RoleFunctionMapper roleFunctionMapper;

	@Override
	public int deleteByPrimaryKey(Long id) {
		return roleFunctionMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(RoleFunction roleFunction) {
		return roleFunctionMapper.insert(roleFunction);
	}

	@Override
	public int insertSelective(RoleFunction roleFunction) {
		return roleFunctionMapper.insertSelective(roleFunction);
	}

	@Override
	public RoleFunction selectByPrimaryKey(Long id) {
		return roleFunctionMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(RoleFunction roleFunction) {
		return roleFunctionMapper.updateByPrimaryKeySelective(roleFunction);
	}

	@Override
	public int updateByPrimaryKey(RoleFunction roleFunction) {
		return roleFunctionMapper.updateByPrimaryKey(roleFunction);
	}

}
