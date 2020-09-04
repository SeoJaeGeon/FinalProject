package com.kh.kass.movie.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.movie.model.dao.MovieManagerDao;
import com.kh.kass.movie.model.vo.Movie;

@Service("MovieManagerService")
public class MovieManagerServiceImpl implements MovieManagerService{

	@Autowired
	private MovieManagerDao mDao;
	
	
	@Override
	public int insertMovieManager(Movie m) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMovieManager(Movie m) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMovieManager(Movie m) {
		// TODO Auto-generated method stub
		return 0;
	}

}
