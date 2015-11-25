package com.yuxh.mysky.service;

import java.util.List;

import com.yuxh.mysky.entry.User;

public interface ShiroBean {

	public List<String> queryUserPermission(String username);

	public User findUserByUserName(String username);

}
