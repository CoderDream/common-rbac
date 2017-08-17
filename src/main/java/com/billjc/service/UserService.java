package com.billjc.service;

import com.billjc.model.User;

public interface UserService {

	int deleteByPrimaryKey(Long id);

	int insert(User user);

	int insertSelective(User user);

	User selectByPrimaryKey(Long id);

	int updateByPrimaryKeySelective(User user);

	int updateByPrimaryKey(User user);

}