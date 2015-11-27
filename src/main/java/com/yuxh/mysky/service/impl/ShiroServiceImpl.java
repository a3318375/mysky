package com.yuxh.mysky.service.impl;

import java.util.Collection;
import java.util.List;

import org.springframework.stereotype.Service;

import com.yuxh.mysky.entry.User;
import com.yuxh.mysky.service.ShiroService;

@Service("shiroService")
public class ShiroServiceImpl implements ShiroService {

	@Override
	public List<String> queryUserPermission(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findLoginUser(String userName, Object object) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<String> getPermissionsAsString(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Collection<String> getRolesAsString(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
