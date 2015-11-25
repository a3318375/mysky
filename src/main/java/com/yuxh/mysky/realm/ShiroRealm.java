package com.yuxh.mysky.realm;

import java.util.Iterator;
import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import com.yuxh.mysky.entry.User;
import com.yuxh.mysky.service.ShiroBean;

public class ShiroRealm extends AuthorizingRealm {

	private ShiroBean permissionMgr;
	
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		// 权限名称
		String permissionName;
		try {
			// 查询用户授权信息
			SimpleAuthorizationInfo author = new SimpleAuthorizationInfo();
			// 查找登录用户名称
			String username = (String) principals.getPrimaryPrincipal();
			System.out.println(username);
			// 查询用户对应角色对应的资源
			List<String> lstPermission = permissionMgr.queryUserPermission(username);
			// 迭代查询
			Iterator<String> it = lstPermission.iterator();
			while (it.hasNext()) {
				permissionName = it.next().toString();
				// 把资源名称添加到用户所对于的资源集合中
				author.addStringPermission(permissionName);
			}
			return author;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public ShiroBean getPermissionMgr() {
		return permissionMgr;
	}

	public void setPermissionMgr(ShiroBean permissionMgr) {
		this.permissionMgr = permissionMgr;
	}

	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
		User user = permissionMgr.findUserByUserName(token.getUsername());
		if (user != null) {
			return new SimpleAuthenticationInfo(user.getUsername(), user.getPassword(), getName());
		} else {
			return null;
		}
	}

}
