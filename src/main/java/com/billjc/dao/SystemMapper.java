package com.billjc.dao;

import com.billjc.model.System;

public interface SystemMapper {
    int deleteByPrimaryKey(Long id);

    int insert(System record);

    int insertSelective(System record);

    System selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(System record);

    int updateByPrimaryKey(System record);
}