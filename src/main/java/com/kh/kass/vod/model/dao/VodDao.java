package com.kh.kass.vod.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.common.PageInfo;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.vod.model.vo.VodOrder;
import com.kh.kass.vod.model.vo.VodPay;
import com.kh.kass.vod.model.vo.VodWish;


@Repository("vDao")
public class VodDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<Movie> selectList(PageInfo pi , int category) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		String test = "";
		if(category > 0) {
			test += category;
			return (ArrayList)sqlSession.selectList("vodMapper.selectList" , test , rowBounds );
		}else {
			
			return (ArrayList)sqlSession.selectList("vodMapper.selectList" ,test , rowBounds );	
		}
	}
	
	public Movie selectMovie(int movieNo) {
		
		return sqlSession.selectOne("vodMapper.selectOne", movieNo);
	}
	
	public int vwish(VodWish vw) {
		
		return sqlSession.insert("vodMapper.insertwish" , vw);
	}
	
	public int vcart(VodWish vw) {
		
		return sqlSession.insert("vodMapper.insertcart" , vw);
	}

	public int selectListCount(int category) {
		String test = "";
		if(category > 0) {
			test += category;
			return sqlSession.selectOne("vodMapper.selectListCount" ,test);	
		}else {
			
			return sqlSession.selectOne("vodMapper.selectListCount" ,test);		
		}
	}
	
	// --------------------------
	public ArrayList<Movie> wishselectList(PageInfo pi , int userNo) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("vodMapper.wishselectList" , userNo ,rowBounds);
	}
	
	
	
	
	
	
	
	
	
	public Movie selectwishVod(VodWish vw) {
		
		return sqlSession.selectOne("vodMapper.selectwishVod" , vw);
	}
	
	public Movie selectcartVod(VodWish vw) {
		
		return sqlSession.selectOne("vodMapper.selectcartVod" , vw);
	}
	
	public int insertpay(VodPay vp) {
		
		return sqlSession.insert("vodMapper.insertpay" , vp);
	}
	
	public int selectpay() {
		
		return sqlSession.selectOne("vodMapper.selectpay");
	}
	
	public int insertorder(VodOrder vo) {
		
		return sqlSession.insert("vodMapper.insertorder",vo);
	}
	
public ArrayList<Movie> cartselectList(int userNo) {
		
		return (ArrayList)sqlSession.selectList("vodMapper.cartselectList" , userNo);
	}

	public int cartdelete(int movieNo) {
	
	return sqlSession.insert("vodMapper.cartdelete",movieNo);
}
	
	public ArrayList<Movie> searchlist(String search) {
		
			return (ArrayList)sqlSession.selectList("vodMapper.searchlist" , search);
		}
	
	public ArrayList<Movie> searchlist1(String search) {
		
		return (ArrayList)sqlSession.selectList("vodMapper.searchlist1" , search);
	}
	
	
	public int vodvod(int movieNo) {
		
		return sqlSession.update("vodMapper.vodvod" , movieNo);
	}
	
	
	public int selectListCount1(int userNo) {
		
			return sqlSession.selectOne("vodMapper.selectListCount1" ,userNo);		
		
	}

	
}
