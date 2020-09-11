package com.kh.kass.movie.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.common.Attachment;
import com.kh.kass.movie.model.dao.MovieManagerDao;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.movie.model.vo.MovieResListAjax;
import com.kh.kass.movie.model.vo.Movie_Area;
import com.kh.kass.movie.model.vo.Movie_Res;

@Service("MovieManagerService")
public class MovieManagerServiceImpl implements MovieManagerService{

	@Autowired
	private MovieManagerDao mDao;
	
	@Override
	public int updateMovieManager(Movie movieNo) {
		// TODO Auto-generated method stub
		return mDao.updateMovie(movieNo);
	}

	@Override
	public int deleteMovieManager(Movie m) {
		return mDao.deleteMovieFile(m);
	}

	@Override
	public ArrayList<Movie> movList() {
		return mDao.movList();
	}

	@Override
	public int insertMovieManager(Movie m) {
		return mDao.insertMovie(m);
	}



	@Override
	public ArrayList<Movie> selectMovieNo(String movieName) {
		System.out.println("서비스에서 다오로");
		return mDao.selectMovieNo(movieName);
	}

	@Override
	public int insertFileMovieManager(HashMap<Object, Object> fullFileName1) {
		// TODO Auto-generated method stub
		return mDao.insertMovieFile(fullFileName1);
	}

	@Override
	public ArrayList<Movie> movListName(String movieName) {
		return mDao.selectMovieName(movieName);
	}

	@Override
	public ArrayList<Movie> movList1() {
		return mDao.selectMovie1();
	}

	@Override
	public ArrayList<Attachment> movAttachmentList1(int movieNo) {
		// TODO Auto-generated method stub
		return mDao.selectAttachmentList1(movieNo);
	}

	@Override
	public ArrayList<Attachment> movAttachmentList2(int movieNo) {
		// TODO Auto-generated method stub
		return mDao.selectAttachmentList2(movieNo);
	}

	@Override
	public ArrayList<Attachment> movAttachmentList3(int movieNo) {
		// TODO Auto-generated method stub
		return mDao.selectAttachmentList3(movieNo);
	}
	
	
	// delete 페이지 실험중
	@Override
	public ArrayList<Movie> movListON() {
		return mDao.movListOn();
	}
	
	// delete 페이지에서 MovieNo를 가지고 해당 Movie 객체를 가져옴
	@Override
	public ArrayList<Movie> selectDeleteMovie(int movieNo) {
		return mDao.deleteSelectMovie(movieNo);
	}

	@Override
	public int deleteMovieInfoManager(Movie movie1) {
		return mDao.deleteMovieInfoManager(movie1);
	}

	@Override
	public ArrayList<Movie_Area> movListAREA() {
		return mDao.selectAreaList();
	}

	@Override
	public ArrayList<Movie_Res> selectmovResList(int movieNo) {
		return mDao.selectMovieResList(movieNo);
	}

	@Override
	public ArrayList<Movie_Res> selectmovResList2(Movie_Res movie_ResList2) {
		return mDao.selectMovieResList2(movie_ResList2);
	}

	@Override
	public int insertMovieRes(MovieResListAjax movieResListAjax) {
		return mDao.insertMovieRes(movieResListAjax);
	}
	

}
