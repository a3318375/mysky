package com.yuxh.mysky.service;

import java.util.List;

import com.yuxh.mysky.entry.Article;

public interface ArticleService {

	public List<Article> findAllArticle(int newNo, int pageSize);

}
