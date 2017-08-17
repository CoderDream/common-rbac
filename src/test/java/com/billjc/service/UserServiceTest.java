package com.billjc.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.billjc.base.BaseTest;
import com.billjc.model.User;

public class UserServiceTest extends BaseTest {

	@Autowired
	private UserService userService;

	@Test
	public void testSelectByParams01() {
		Long id = 1L;
		User user = userService.selectByPrimaryKey(id);
		System.out.println(user.getId() + "\t" + user.getUsername() + "\t"
						+ user.getWorkId());
	}

	// @Test
	// public void testSelectByParams02() {
	// List<User> userList = userService.selectByParams("沈");
	// for (User user : userList) {
	// System.out.println(user);
	// }
	// }
	//
	//
	// @Test
	// public void testSelectByUsername01() {
	// String username = "沈";
	// List<User> userList = userService.selectByUsername(username);
	// for (User user : userList) {
	// System.out.println(user);
	// }
	// }

}
