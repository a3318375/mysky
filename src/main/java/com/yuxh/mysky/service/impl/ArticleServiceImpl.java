package com.yuxh.mysky.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yuxh.mysky.dao.ArticleDao;
import com.yuxh.mysky.entry.Article;
import com.yuxh.mysky.service.ArticleService;

@Service("articleService")
public class ArticleServiceImpl implements ArticleService {

	@Resource(name="articleDao")
	private ArticleDao articleDao;

	@Override
	public List<Article> findAllArticle(int newNo, int pageSize) {
		return this.articleDao.findAllArticle(newNo, pageSize);
	}

}
