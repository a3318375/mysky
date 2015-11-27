package com.yuxh.mysky.dao;

import com.yuxh.mysky.entry.User;

public interface UserDao {
	
	public int deleteByPrimaryKey(String id);

	public int insert(User record);

	public int insertSelective(User record);

	public User selectByPrimaryKey(String id);

	public int updateByPrimaryKeySelective(User record);

	public int updateByPrimaryKey(User record);

	public User getUserByUsername(String userName);
}