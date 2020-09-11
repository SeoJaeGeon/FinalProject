package com.kh.kass.reservation.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.common.PageInfo;
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

	public ArrayList<Review> reviewList(int movieNum) {
		return (ArrayList)sqlSession.selectList("resMapper.reviewList", movieNum);
	}

	public Reservation resSeatSelect(int placeValue) {
		return (Reservation)sqlSession.selectOne("resMapper.resSeatSelect", placeValue);
	}

	public int updateResInfo(Reservation seatUpdate) {
		return sqlSession.update("resMapper.updateResInfo", seatUpdate);
	}

	public int updateRes(Reservation res) {
		return sqlSession.insert("resMapper.updateRes", res);
	}

	public int updateRes2(Reservation res, String radioVal) {
		if(radioVal.equals("무통장")) {
			return sqlSession.insert("resMapper.updatePay", res);			
		}else {
			return sqlSession.insert("resMapper.updateCard", res);	
		}
	}

	public ArrayList<Review> rSelectList(PageInfo pi, int movieNum) {
		// 몇 개의 게시글을 건너 뛸 것인지
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("resMapper.rSelectList", movieNum, rowBounds);
	}

	public ArrayList<Movie> searchMovie(String searchText) {
		return (ArrayList)sqlSession.selectList("resMapper.searchMovie", searchText);
	}

	public ArrayList<Movie> movListFavor() {
		return (ArrayList)sqlSession.selectList("resMapper.movListFavor");
	}
	

}
