package com.kh.kass.snack.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.snack.model.vo.Snack;

@Repository("sDao")
public class SnackDao {
	@Autowired
	SqlSessionTemplate sqlSession;

	public int insertSnack(Snack s) {
		return sqlSession.insert("snackMapper.insertSnack", s);
	}

}
