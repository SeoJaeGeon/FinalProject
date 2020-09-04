package com.kh.kass.reservation.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	public ArrayList<Movie> reviewList(int movieNum) {
		return resDao.reviewList(movieNum);
	}

}
