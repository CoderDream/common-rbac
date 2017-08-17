package com.billjc.dao;

import com.billjc.model.RoleFunction;

public interface RoleFunctionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(RoleFunction record);

    int insertSelective(RoleFunction record);

    RoleFunction selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(RoleFunction record);

    int updateByPrimaryKey(RoleFunction record);
}