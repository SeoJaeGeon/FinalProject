package com.kh.kass.vod.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.common.PageInfo;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.vod.model.vo.VodWish;


@Repository("vDao")
public class VodDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	/*public ArrayList<Movie> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("vodMapper.selectList" , null , rowBounds);
	}*/
	
	public Movie selectMovie(int movieNo) {
		
		return sqlSession.selectOne("vodMapper.selectOne", movieNo);
	}
	
	public int vwish(VodWish vw) {
		
		return sqlSession.insert("vodMapper.insertwish" , vw);
	}
	
	public int vcart(VodWish vw) {
		
		return sqlSession.insert("vodMapper.insertcart" , vw);
	}

	public int selectListCount() {
		
		return sqlSession.selectOne("vodMapper.selectListCount");
	}
	
	/*public ArrayList<Movie> selectList1() {
		
		return (ArrayList)sqlSession.selectList("vodMapper.selectList1");
	}
*/
	
}
