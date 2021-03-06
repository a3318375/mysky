package com.yuxh.mysky.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yuxh.mysky.dao.UserDao;
import com.yuxh.mysky.entry.User;
import com.yuxh.mysky.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource(name="userDao")
	private UserDao userDao;

	public User getUserById(String userId) {
		return userDao.selectByPrimaryKey(userId);
	}

	@Override
	public User getUserByUserAccname(String accName) {
		return userDao.getUserByUserAccname(accName);
	}

}
