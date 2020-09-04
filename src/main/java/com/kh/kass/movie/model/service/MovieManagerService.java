package com.kh.kass.movie.model.service;

import com.kh.kass.movie.model.vo.Movie;

public interface MovieManagerService {
	
	// 1. 무비 정보 등록
	public int insertMovieManager(Movie m);
	
	// 2. 무비 정보 수정
	public int updateMovieManager(Movie m);
		
	// 3. 무비 정보 삭제
	public int deleteMovieManager(Movie m);

}
