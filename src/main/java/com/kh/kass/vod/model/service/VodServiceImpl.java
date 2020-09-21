package com.kh.kass.vod.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.common.PageInfo;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.vod.model.dao.VodDao;
import com.kh.kass.vod.model.vo.VodOrder;
import com.kh.kass.vod.model.vo.VodPay;
import com.kh.kass.vod.model.vo.VodReview;
import com.kh.kass.vod.model.vo.VodWish;


@Service("vService")
public class VodServiceImpl implements VodService {

	

	@Autowired
	private VodDao vDao;

	@Override
	public ArrayList<Movie> selectList(PageInfo pi , int category) {
		return vDao.selectList(pi , category);
	}

	@Override
	public Movie selectMovie(int movieNo) {
		
		return vDao.selectMovie(movieNo);
	}
	
	@Override
	public Movie selectMovie1(int movieNo) {
		
		return vDao.selectMovie1(movieNo);
	}
	
	@Override
	public int vwish(VodWish vw) {
		
		return vDao.vwish(vw);
	}
	
	@Override
	public int vcart(VodWish vw) {
		
		return vDao.vcart(vw);
	}

	@Override
	public int selectListCount(int category) {

		return vDao.selectListCount(category);
	}

	@Override
	public ArrayList<Movie> wishselectList(PageInfo pi  , int userNo) {

		return vDao.wishselectList(pi , userNo);
	}
	
	@Override
	public Movie selectwishVod(VodWish vw) {
		
		return vDao.selectwishVod(vw);
	}
	
	@Override
	public Movie selectcartVod(VodWish vw) {
		
		return vDao.selectcartVod(vw);
	}
	
	@Override
	public int insertpay(VodPay vp) {
		
		return vDao.insertpay(vp);
	}
	
	@Override
	public int selectpay() {
		
		return vDao.selectpay();
	}
	
	@Override
	public int insertorder(VodOrder vo) {
		
		return vDao.insertorder(vo);
	}
	
	@Override
	public ArrayList<Movie> cartselectList(int userNo) {

		return vDao.cartselectList(userNo);
	}
	
	@Override
	public int cartdelete(int movieNo) {
		
		return vDao.cartdelete(movieNo);
	}
	
	
	@Override
	public ArrayList<Movie> searchlist(String search) {

		return vDao.searchlist(search);
	}
	
	
	@Override
	public ArrayList<Movie> searchlist1(String search) {

		return vDao.searchlist1(search);
	}
	
	

	@Override
	public ArrayList<Movie> searchlist2(String search) {

		return vDao.searchlist2(search);
	}
	
	@Override
	public int vodvod(int movieNo) {
		
		return vDao.vodvod(movieNo);
	}
	
	@Override
	public int vodvod1(int movieNo) {
		
		return vDao.vodvod1(movieNo);
	}
	
	
	@Override
	public int selectListCount1(int userNo) {

		return vDao.selectListCount1(userNo);
	}

	
	@Override
	public ArrayList<VodReview> selectvr(int movieNo) {
		
		return vDao.selectvr(movieNo);
	}
	
	
	@Override
	public int dddd(VodWish vw ) {
		
		return vDao.dddd(vw);
	}
}
