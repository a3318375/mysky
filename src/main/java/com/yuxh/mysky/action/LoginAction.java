package com.yuxh.mysky.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginAction {

	@RequestMapping("/login")
	public String login(){
		return "index";
	}
}
