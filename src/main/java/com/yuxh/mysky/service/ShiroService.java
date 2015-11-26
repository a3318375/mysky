package com.yuxh.mysky.service;

import java.util.Collection;
import java.util.List;

import com.yuxh.mysky.entry.User;

public interface ShiroService {

	public List<String> queryUserPermission(String username);

	public User findLoginUser(String userName, Object object);

	public Collection<String> getPermissionsAsString(String userId);

	public Collection<String> getRolesAsString(String userId);

}
