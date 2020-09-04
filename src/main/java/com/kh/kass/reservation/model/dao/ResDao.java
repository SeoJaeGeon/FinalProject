package com.kh.kass.reservation.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.reservation.model.vo.Reservation;
import com.kh.kass.review.model.vo.Review;

@Repository("resDao")
public class ResDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public ArrayList<Reservation> resSelectAll() {
		return (ArrayList)sqlSession.selectList("resMapper.resSelectAll");
	}

	public ArrayList<Movie> movSelectAll() {
		return (ArrayList)sqlSession.selectList("resMapper.movSelectAll");
	}

	public ArrayList<Reservation> aSelectAll() {
		return (ArrayList)sqlSession.selectList("resMapper.aSelectAll");
	}

	public ArrayList<Reservation> placeSelect(int num) {
		return (ArrayList)sqlSession.selectList("resMapper.pSelect", num);
	}

	public ArrayList<Reservation> playMovieSelect(Reservation res) {
		return (ArrayList)sqlSession.selectList("resMapper.playMovie", res);
	}

	public ArrayList<Movie> movListON() {
		return (ArrayList)sqlSession.selectList("resMapper.movListOn");
	}

	public ArrayList<Movie> movListWait() {
		return (ArrayList)sqlSession.selectList("resMapper.movListWait");
	}

	public ArrayList<Movie> movListOff() {
		return (ArrayList)sqlSession.selectList("resMapper.movListOff");
	}

	public ArrayList<Movie> movieInfo(int movieNum) {
		return (ArrayList)sqlSession.selectList("resMapper.movieInfo", movieNum);
	}

	public ArrayList<Movie> reviewList(int movieNum) {
		return (ArrayList)sqlSession.selectList("resMapper.reviewList", movieNum);
	}
	
	

}
