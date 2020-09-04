package com.kh.kass.reservation.model.service;

import java.util.ArrayList;

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

	public ArrayList<Movie> reviewList(int movieNum);
	
}