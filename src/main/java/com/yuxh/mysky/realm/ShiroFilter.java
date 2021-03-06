package com.yuxh.mysky.realm;

import com.yuxh.mysky.entry.ShiroUser;
import com.yuxh.mysky.entry.User;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.authz.PermissionsAuthorizationFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import java.io.IOException;

@Component("shirofilter")
public class ShiroFilter extends PermissionsAuthorizationFilter {

	public Logger logger = LoggerFactory.getLogger(getClass());

	@Resource
	private CacheManager shiroCacheManager;

	@SuppressWarnings("unused")
	@Override
	public boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue) throws IOException {
		System.out.println("过滤器启动");
		// upm with shiro subject/principal
		Subject user = SecurityUtils.getSubject();
		ShiroUser shiroUser = (ShiroUser) user.getPrincipal();
		logger.info("过滤器执行2");
		if(shiroUser==null){
			logger.info("过滤器执行3");
			try {
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			}
			return true;
		}
		// get sso session
		logger.info("过滤器执行4");
		Session session = user.getSession(false);
		User suser = (User) session.getAttribute("t_user");
		System.out.println("获取用户成功：" + suser.getName());
		if(session==null){
			logger.info("过滤器执行5");
			System.out.println("session为空");
			try {
				request.getRequestDispatcher("/login.jsp").forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			}
			return true;
		}
		logger.info("过滤器执行6");
		Cache<Object, Object> cache = shiroCacheManager.getCache(GlobalStatic.authenticationCacheName);
		if(cache==null){
			System.out.println("cache为空");
		}
		Object cachedSession = cache.get(GlobalStatic.authenticationCacheName + "-" + shiroUser.getAccount());
		if (cachedSession == null) {
			user.logout();
			return false;
		}
		String cachedSessionId = cachedSession.toString();
		String sessionId = (String) session.getId();
		if (!sessionId.equals(cachedSessionId)) {
			user.logout();
		}

		HttpServletRequest req = (HttpServletRequest) request;
		// get shiro upm
		Subject subject = getSubject(request, response);
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();

		int i = uri.indexOf(contextPath);
		if (i > -1) {
			uri = uri.substring(i + contextPath.length());
		}
		if (StringUtils.isBlank(uri)) {
			uri = "/";
		}

		boolean permitted = false;
		if ("/".equals(uri)) {
			permitted = true;
		} else {
			// check has right using shiro
			permitted = subject.isPermitted(uri);
		}

		return permitted;
	}
}
