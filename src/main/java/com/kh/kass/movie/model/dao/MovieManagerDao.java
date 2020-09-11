package com.kh.kass.movie.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.common.Attachment;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.movie.model.vo.MovieResListAjax;
import com.kh.kass.movie.model.vo.Movie_Area;
import com.kh.kass.movie.model.vo.Movie_Res;

@Repository("MovieManagerDao")
public class MovieManagerDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	// Movie 리스트 불러오기
	public ArrayList<Movie> movList() {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.movieList");
	}

	public int insertMovie(Movie m) {
		return sqlSession.insert("movieManagerMapper.movieInsert", m);
	}

	public int insertMovieFile(HashMap<Object, Object> fullFileName1) {
		return sqlSession.insert("movieManagerMapper.movieFileInsert",fullFileName1);
	}

	public ArrayList<Movie> selectMovieNo(String movieName) {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.selectMovieNo",movieName);
	}

	public ArrayList<Movie> selectMovieName(String movieName) {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.selectMovieName",movieName);
	}

	public ArrayList<Movie> selectMovie1() {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.selectMovieList1");
	}

	public ArrayList<Attachment> selectAttachmentList1(int movieNo) {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.AttachmentList1",movieNo);
	}
	
	public ArrayList<Attachment> selectAttachmentList2(int movieNo) {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.AttachmentList2",movieNo);
	}
	
	public ArrayList<Attachment> selectAttachmentList3(int movieNo) {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.AttachmentList3",movieNo);
	}
	
	public int updateMovie(Movie m) {
		return sqlSession.update("movieManagerMapper.updateMovie",m);
	}

	public int deleteMovieFile(Movie m) {
		return sqlSession.delete("movieManagerMapper.deleteMovieFile",m);
	}

	
	// delete 페이지 실험중
	public ArrayList<Movie> movListOn() {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.movListOn");
	}

	public ArrayList<Movie> deleteSelectMovie(int movieNo) {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.deleteSelectMovie",movieNo);
	}

	public int deleteMovieInfoManager(Movie movie1) {
		return sqlSession.delete("movieManagerMapper.deleteMovieInfo",movie1);
	}

	public ArrayList<Movie_Area> selectAreaList() {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.selectAreaList");
	}

	public ArrayList<Movie_Res> selectMovieResList(int movieNo) {
		return (ArrayList)sqlSession.selectList("movieManagerMapper.selectMovieResList",movieNo);
	}

	public ArrayList<Movie_Res> selectMovieResList2(Movie_Res movie_ResList2) {
		System.out.println("지역포함 검색 다오로옴 : " + movie_ResList2);
		return (ArrayList)sqlSession.selectList("movieManagerMapper.selectMovieResList2",movie_ResList2);
	}

	public int insertMovieRes(MovieResListAjax movieResListAjax) {
		return sqlSession.insert("movieManagerMapper.insertMovieResInfo",movieResListAjax);
	}
	//
	
	
}
