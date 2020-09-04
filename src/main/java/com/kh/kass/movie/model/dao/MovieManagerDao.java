package com.kh.kass.movie.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("MovieManagerDao")
public class MovieManagerDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
}
