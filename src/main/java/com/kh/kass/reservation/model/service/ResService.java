package com.kh.kass.reservation.model.service;

import java.util.ArrayList;

import com.kh.kass.common.PageInfo;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.reservation.model.vo.Reservation;
import com.kh.kass.review.model.vo.Review;

public interface ResService {
	public ArrayList<Reservation> resSelectAll();

	public ArrayList<Movie> movSelectAll();

	public ArrayList<Reservation> aSelectAll();

	public ArrayList<Reservation> placeSelect(int num);

	public ArrayList<Reservation> playMovieSelect(Reservation res);

	public ArrayList<Movie> movListON();

	public ArrayList<Movie> movListWait();

	public ArrayList<Movie> movListOff();

	public ArrayList<Movie> movieInfo(int movieNum);

	public ArrayList<Review> reviewList(int movieNum);

	public Reservation resSeatSelect(int placeValue);

	public int updateResInfo(Reservation seatUpdate);

	public int updateRes(Reservation res, String radioVal);

	public ArrayList<Review> rSelectList(PageInfo pi, int movieNum);

	public ArrayList<Movie> searchMovie(String searchText);

	public ArrayList<Movie> movListFavor();

	public ArrayList<Movie> searchList(String searchText);

	public ArrayList<Movie> movieDateList();

	public ArrayList<Movie> movieFavorList();

	public ArrayList<Reservation> placeList();

	public ArrayList<Movie> scoreList();

	public ArrayList<Movie> totalScoreList();

	public ArrayList<Movie> mScoreList();

	public ArrayList<Movie> mTotalScoreList();
	
}
