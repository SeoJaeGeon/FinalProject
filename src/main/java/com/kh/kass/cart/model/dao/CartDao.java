package com.kh.kass.cart.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("cDao")
public class CartDao {
	@Autowired
	SqlSessionTemplate sqlSession;
}
