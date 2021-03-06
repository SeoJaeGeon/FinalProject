package com.kh.kass.movie.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.kass.common.Attachment;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.movie.model.vo.MovieResListAjax;
import com.kh.kass.movie.model.vo.Movie_Area;
import com.kh.kass.movie.model.vo.Movie_Genre;
import com.kh.kass.movie.model.vo.Movie_Res;
import com.kh.kass.movie.model.vo.Movie_Res_Room;
import com.kh.kass.movie.model.vo.Movie_Room;
import com.kh.kass.movie.model.vo.Movie_Sales;

public interface MovieManagerService {
	
	// 1. 무비 정보 등록
	public int insertMovieManager(Movie m);
	
	// 2. 무비 정보 수정
	public int updateMovieManager(Movie movieNo);
		
	// 3. 무비 정보 삭제
	public int deleteMovieManager(String m);
	
	// 4. 무비 리스트 출력
	public ArrayList<Movie> movList();
	
	// 5. 무비 정보 파일 insert
	public int insertFileMovieManager(HashMap<Object, Object> fullFileName1);
	
	// 6. 무비 이름으로 No 찾기
	public ArrayList<Movie> selectMovieNo(String movieName);
	
	// 7. 무비 update 이름으로 1개 무비 전체 셀렉트
	public ArrayList<Movie> movListName(String movieName);
	
	// 8. 무비 update Movie 1개만 가져오기
	public ArrayList<Movie> movList1();
	
	// 9. 무비 update Attachment Arraylist로 가져오기 포스터
	public ArrayList<Attachment> movAttachmentList1(int movieNo);
	
	// 9-1. 무비 update Attachment Arraylist로 가져오기 스틸컷
	public ArrayList<Attachment> movAttachmentList2(int movieNo);
	
	// 9-2. 무비 update Attachment Arraylist로 가져오기 vod
	public ArrayList<Attachment> movAttachmentList3(int movieNo);

	
	// delete 페이지 보는곳 실험1
	public ArrayList<Movie> movListON();

	public ArrayList<Movie> selectDeleteMovie(int movieNo);

	public int deleteMovieInfoManager(Movie movie1);
	
	// 상영관 정보 가져옴
	public ArrayList<Movie_Area> movListAREA();

	//movieResList select 하는 기능
	public ArrayList<Movie_Res> selectmovResList(int movieNo);

	public ArrayList<Movie_Res> selectmovResList2(Movie_Res movie_ResList2);

	public int insertMovieRes(MovieResListAjax movieResListAjax);
	//

	public ArrayList<Movie_Genre> selectMovieGenre();

	public ArrayList<Movie_Genre> selectMovieGenreName(int getGenreCode);
	
	// 파일 삭제 창에서 삭제를 눌렀을 시
	public int deleteMovieInfo(Movie movie1);

	public int YNupdateMovie(Movie movie1);

	public int YNupdateMovie2(Movie movie1);

	public ArrayList<Movie_Sales> salesList2(Movie_Sales movie_Sales);

	public ArrayList<Movie_Sales> salesList1(Movie_Sales movie_Sales);

	public Movie_Res_Room resInfoChk(int i);

	public int resInfoDelete(int i);

	// 영화 상영 취소 날짜를 돌렸을 때 들어가는 페이지
	public ArrayList<Movie_Res> selectmovResList3(Movie_Res movie_ResList2);

	public ArrayList<Movie_Room> movRoomList(String ma_name);

	public ArrayList<Movie_Sales> selectMovieTebalAjax(int maNo);

	public ArrayList<Movie> movListON2();

	public ArrayList<Movie_Res> selectMovResListAll();

	
}
