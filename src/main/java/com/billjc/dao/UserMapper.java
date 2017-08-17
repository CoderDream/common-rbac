package com.billjc.dao;

import com.billjc.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Long id);

    int insert(User user);

    int insertSelective(User user);

    User selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(User user);

    int updateByPrimaryKey(User user);
}