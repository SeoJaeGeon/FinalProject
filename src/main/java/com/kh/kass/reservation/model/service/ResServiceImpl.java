package com.kh.kass.reservation.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.common.PageInfo;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.reservation.model.dao.ResDao;
import com.kh.kass.reservation.model.vo.Reservation;
import com.kh.kass.review.model.vo.Review;

@Service("resService")
public class ResServiceImpl implements ResService {
	
	@Autowired
	private ResDao resDao;
	
	@Override
	public ArrayList<Reservation> resSelectAll() {
		return resDao.resSelectAll();
	}

	@Override
	public ArrayList<Movie> movSelectAll() {
		return resDao.movSelectAll();
	}

	@Override
	public ArrayList<Reservation> aSelectAll() {
		return resDao.aSelectAll();
	}

	@Override
	public ArrayList<Reservation> placeSelect(int num) {
		return resDao.placeSelect(num);
	}

	@Override
	public ArrayList<Reservation> playMovieSelect(Reservation res) {
		return resDao.playMovieSelect(res);
	}

	@Override
	public ArrayList<Movie> movListON() {
		return resDao.movListON();
	}

	@Override
	public ArrayList<Movie> movListWait() {
		return resDao.movListWait();
	}

	@Override
	public ArrayList<Movie> movListOff() {
		return resDao.movListOff();
	}

	@Override
	public ArrayList<Movie> movieInfo(int movieNum) {
		return resDao.movieInfo(movieNum);
	}

	@Override
	public ArrayList<Review> reviewList(int movieNum) {
		return resDao.reviewList(movieNum);
	}

	@Override
	public Reservation resSeatSelect(int placeValue) {
		return resDao.resSeatSelect(placeValue);
	}

	@Override
	public int updateResInfo(Reservation seatUpdate) {
		return resDao.updateResInfo(seatUpdate);
	}

	@Override
	public int updateRes(Reservation res, String radioVal) {
		int result =  resDao.updateRes(res);
		int result2 = resDao.updateRes2(res, radioVal);
		
		return result+result2;
	}

	@Override
	public ArrayList<Review> rSelectList(PageInfo pi, int movieNum) {
		return resDao.rSelectList(pi, movieNum);
	}

	@Override
	public ArrayList<Movie> searchMovie(String searchText) {
		return resDao.searchMovie(searchText);
	}

	@Override
	public ArrayList<Movie> movListFavor() {
		return resDao.movListFavor();
	}


}
