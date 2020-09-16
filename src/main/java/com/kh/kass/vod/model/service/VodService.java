package com.kh.kass.vod.model.service;

import java.util.ArrayList;

import com.kh.kass.common.PageInfo;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.vod.model.vo.VodWish;


public interface VodService {

	
	//public ArrayList<Movie> selectList(PageInfo pi);
	
	public Movie selectMovie(int movieNo);
	
	public int vwish(VodWish vw);
	
	public int vcart(VodWish vw);

	public int selectListCount();
	
	//public ArrayList<Movie> selectList1();
}
