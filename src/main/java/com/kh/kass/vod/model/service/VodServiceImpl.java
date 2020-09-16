package com.kh.kass.vod.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.common.PageInfo;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.vod.model.dao.VodDao;
import com.kh.kass.vod.model.vo.VodWish;


@Service("vService")
public class VodServiceImpl implements VodService {

	

	@Autowired
	private VodDao vDao;
/*
	@Override
	public ArrayList<Movie> selectList(PageInfo pi) {
		return vDao.selectList(pi);
	}*/

	@Override
	public Movie selectMovie(int movieNo) {
		
		return vDao.selectMovie(movieNo);
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
	public int selectListCount() {

		return vDao.selectListCount();
	}
	
	/*@Override
	public ArrayList<Movie> selectList1() {
		return vDao.selectList();
	}
*/

	

}
