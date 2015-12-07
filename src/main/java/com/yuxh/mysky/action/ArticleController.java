package com.yuxh.mysky.action;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yuxh.mysky.entry.Article;
import com.yuxh.mysky.service.ArticleService;
import com.yuxh.mysky.utils.StringUtils;

@Controller
@RequestMapping("/article")
public class ArticleController {

	@Resource(name="articleService")
	private ArticleService articleService;

	@RequestMapping("/list")
	public void login(HttpServletRequest request) {
		int newNo = 0;
		String pageNo = request.getParameter("pageNo");
		if(!StringUtils.isNull(pageNo)){
			newNo = Integer.parseInt(pageNo)-1;
		}
		List<Article> list = articleService.findAllArticle(newNo,5);
		request.setAttribute("list", list);
	}
}
