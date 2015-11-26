package com.yuxh.mysky.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/shiro/")
public class LoginAction {

	@RequestMapping("/login")
	public String login(HttpServletRequest request) {
		System.out.println(123213213);
		Subject currentUser = SecurityUtils.getSubject();
		// 传递token给shiro的realm
		UsernamePasswordToken token = new UsernamePasswordToken(request.getParameter("username"), request.getParameter("password"));
		try {
			currentUser.login(token);
			return "index";
		} catch (AuthenticationException e) {// 登录失败
			e.printStackTrace();
			request.setAttribute("msg", "不匹配的用户名和密码");
			return "login";
		}
	}
}
