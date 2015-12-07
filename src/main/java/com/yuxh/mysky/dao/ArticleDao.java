package com.yuxh.mysky.dao;

import java.util.List;

import com.yuxh.mysky.entry.Article;

public interface ArticleDao {
    
	public int deleteByPrimaryKey(Integer id);

	public int insert(Article record);

	public int insertSelective(Article record);

	public Article selectByPrimaryKey(Integer id);
	
	public List<Article> findAllArticle(int pageNo,int pageSize);
	
	public int updateByPrimaryKeySelective(Article record);

	public int updateByPrimaryKey(Article record);
}