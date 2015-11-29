package com.yuxh.mysky.service;

import com.yuxh.mysky.entry.User;

public interface UserService {

	public User getUserById(String userId);

	public User getUserByUserAccname(String accName);
}
