package com.kh.kass.vod.model.service;

import java.util.ArrayList;

import com.kh.kass.common.PageInfo;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.vod.model.vo.VodOrder;
import com.kh.kass.vod.model.vo.VodPay;
import com.kh.kass.vod.model.vo.VodReview;
import com.kh.kass.vod.model.vo.VodWish;


public interface VodService {

	
	//public ArrayList<Movie> selectList(PageInfo pi);
	
	public Movie selectMovie(int movieNo);
	
	public int vwish(VodWish vw);
	
	public int vcart(VodWish vw);

	public int selectListCount(int category);
	
	public ArrayList<Movie> selectList(PageInfo pi , int category);
	
	public ArrayList<Movie> wishselectList(PageInfo pi , int userNo);
	
	public Movie selectwishVod(VodWish vw);
	
	public Movie selectcartVod(VodWish vw);
	
	public int insertpay(VodPay vp);
	
	public int selectpay();
	
	public int insertorder(VodOrder vo);
	
	public ArrayList<Movie> cartselectList(int userNo);
	
	public int cartdelete(int movieNo);
	
	public ArrayList<Movie> searchlist(String search);
	
	public ArrayList<Movie> searchlist1(String search);
	
	public int vodvod(int movieNo);
	
	public int selectListCount1(int userNo);
	
	public ArrayList<VodReview> selectvr(int movieNo);
	
	public int dddd(VodWish vw );
	
}
