package com.kh.kass.movie.controller;

import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.kass.common.Attachment;
import com.kh.kass.movie.model.exception.MovieManagerException;
import com.kh.kass.movie.model.service.MovieManagerService;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.movie.model.vo.MovieResListAjax;
import com.kh.kass.movie.model.vo.Movie_Area;
import com.kh.kass.movie.model.vo.Movie_Genre;
import com.kh.kass.movie.model.vo.Movie_Res;
import com.kh.kass.movie.model.vo.Movie_Res_Room;
import com.kh.kass.movie.model.vo.Movie_Room;
import com.kh.kass.movie.model.vo.Movie_Sales;
import com.kh.kass.reservation.model.exception.ResException;

@Controller
public class MovieManagerMain {
	
	
	@Autowired
	private MovieManagerService movService;
	
	// 매출 페이지 이동
	@RequestMapping("MovieManagerSalesPage.do")
	public ModelAndView MovieManagerSalesPage(ModelAndView mv) {
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		
		
		
		
		if(MOVIE_AREA != null) {
			mv.addObject("MOVIE_AREA",MOVIE_AREA);
		}
		
		mv.setViewName("MovieManager/MovieManagerSales");
		return mv;
	}
	
	// 매출 페이지 셀렉트 했을 시
	@ResponseBody	
	@RequestMapping("MovieManagerSalesAjax.do")
	public int[] MovieManagerSalesAjax(ModelAndView mv,
			HttpServletRequest request,
			@RequestBody List<Movie_Sales> MSlist) {
		System.out.println("아자스 들어왔어요");
		System.out.println(MSlist);
		
		ArrayList<Movie_Sales> result1 = movService.salesList1(MSlist.get(0));
		ArrayList<Movie_Sales> result2 = movService.salesList2(MSlist.get(0));
		
		int resultSalesToTal1 = 0;
		int resultSalesToTal2 = 0;
		int tatal[] = {0,0};
		for(int i = 0; i < result1.size(); i++) {
			resultSalesToTal1 += result1.get(i).getPryPrice();
		}
		
		for(int j = 0; j < result2.size(); j++) {
			resultSalesToTal2 += result2.get(j).getPryPrice();
		}
		
		System.out.println("토탈1 : " + resultSalesToTal1);
		System.out.println("토탈2 : " + resultSalesToTal2);
		tatal[0] = resultSalesToTal1;
		tatal[1] = resultSalesToTal2;
		System.out.println("최종토탈1 : " + tatal[0]);
		System.out.println("최종토탈2 : " + tatal[1]);
		return tatal;
	}
			
	
	// 영화 정보 등록 이동
	@RequestMapping("MovieManagerInsertPage.do")
	public ModelAndView MovieManagerInsertPage(ModelAndView mv) {
		
		// list select 하는 방법
		ArrayList<Movie> movieList = movService.movList();
		
		// resultOX = 1일시 실패안뜸 0일시 정보등록 실패뜸
		int resultOX = 2;
		
		// 영화 장르를 전체 DB에서 불러오기
		ArrayList<Movie_Genre> movieGenreList = movService.selectMovieGenre();
		for(int i = 0; i<movieGenreList.size();i++) {
			System.out.println("movieGenre : " + movieGenreList.get(i));
		}
		
		mv.addObject("movieGenreList",movieGenreList); // 영화 장르 리스트 전체
		
		//System.out.println(movieList.get(0).toString());
		if (movieList != null) {
			mv.addObject("resultOX",resultOX);
			mv.addObject("movieList", movieList);
			mv.setViewName("MovieManager/MovieManagerInsert");
		} else {
			throw new ResException("movie DB 불러오기 실패.");
		}
		
		return mv;
	}
	
	// 영화 정보 수정 이동
	@RequestMapping("MovieManagerUpdatePage.do")
	public ModelAndView MovieManagerUpdatePage(ModelAndView mv) {
		ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
		ArrayList<Movie> movieList = movService.movList();   // 전체를 가져옴
		System.out.println("movieList1 : " + movieList1);
		System.out.println("movieList : " + movieList);
		int movieNo = movieList1.get(0).getMovieNo();
		
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터
		ArrayList<Attachment> movieAttachment2 = movService.movAttachmentList2(movieNo); // 스틸컷
		ArrayList<Attachment> movieAttachment3 = movService.movAttachmentList3(movieNo); // vod

		
		//System.out.println(movieList.get(0).toString());
		
		// 영화 장르를 전체 DB에서 불러오기
		ArrayList<Movie_Genre> movieGenreList = movService.selectMovieGenre();
		for(int i = 0; i<movieGenreList.size();i++) {
			System.out.println("movieGenre : " + movieGenreList.get(i));
		}
		// 선택된 영화 장르 Name 가져오기
		ArrayList<Movie_Genre> movieGenreListName = movService.selectMovieGenreName(movieList1.get(0).getGenreCode());
		System.out.println("movieGenreListName : " + movieGenreListName);
		
		if (movieList != null) {
			mv.addObject("movieGenreListName",movieGenreListName); // 선택된 영화 장르 이름
			mv.addObject("movieGenreList",movieGenreList); // 영화 장르 리스트 전체
			mv.addObject("movieAttachment1",movieAttachment1);
			mv.addObject("movieAttachment2",movieAttachment2); // 파일들 ArrayList로 가져옴 스틸컷
			mv.addObject("movieAttachment3",movieAttachment3); // 파일들 ArrayList로 가져옴 vod
			mv.addObject("movieList", movieList); // 전체 movie
			mv.addObject("movieList1", movieList1); // 선택된 movie
			mv.setViewName("MovieManager/MovieManagerUpdate");
		} else {
			throw new ResException("movie DB 불러오기 실패.");
		}
		return mv;
	}
	
	// 영화 정보 수정 이름 클릭 했을때 해당 이름의 정보를 DB에서 조회해서 select 시킴
	@RequestMapping("MovieManagerUpdatePageName.do")
		public ModelAndView MovieManagerUpdatePageName(ModelAndView mv, String MovieName) {
			System.out.println("MovieName : " + MovieName);
			ArrayList<Movie> movieListName = movService.movListName(MovieName);
			if(movieListName.isEmpty() || MovieName == null) {
				ArrayList<Movie> movieList = movService.movList();
				int resultOX = 4;
				mv.addObject("resultOX",resultOX);
				mv.addObject("movieList", movieList);
				mv.setViewName("MovieManager/MovieManagerInsert");
				return mv;
			}
			ArrayList<Movie> movieList = movService.movList(); // 1번을 가져옴
			
			System.out.println("movieNo 찾기전");
			int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
			System.out.println("movieNo : " + movieNo);
			System.out.println("movieAttachment 찾으려고 하는중");
			
			ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터
			ArrayList<Attachment> movieAttachment2 = movService.movAttachmentList2(movieNo); // 스틸컷
			ArrayList<Attachment> movieAttachment3 = movService.movAttachmentList3(movieNo); // vod
			
			if(movieAttachment1 == null || movieAttachment2 == null || movieAttachment3 == null) {
				throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
			}
			System.out.println("Attachment1 : " + movieAttachment1.get(0));
			System.out.println("Attachment2 : " + movieAttachment2.get(0));
			System.out.println("Attachment2 : " + movieAttachment2.get(1));
			System.out.println("Attachment2 : " + movieAttachment2.get(2));
			System.out.println("Attachment3 : " + movieAttachment3.get(0));
			
			
			System.out.println("movieListName : " + movieListName.get(0));
			
			// 영화 장르를 전체 DB에서 불러오기
			ArrayList<Movie_Genre> movieGenreList = movService.selectMovieGenre();
			for(int i = 0; i<movieGenreList.size();i++) {
				System.out.println("movieGenre : " + movieGenreList.get(i));
			}
			
			// 선택된 영화 장르 Name 가져오기
			ArrayList<Movie_Genre> movieGenreListName = movService.selectMovieGenreName(movieListName.get(0).getGenreCode());
			System.out.println("movieGenreListName : " + movieGenreListName);
			
			
			
			if(movieList == null) {
				MovieManagerUpdatePage(mv);
			}
			
			System.out.println("마지막 list1 : " + movieListName);
			System.out.println("마지막 list : " + movieList);
			
			if (movieList != null) {
				mv.addObject("movieGenreListName",movieGenreListName); // 선택된 영화 장르 이름
				mv.addObject("movieGenreList",movieGenreList); // 영화 장르 리스트 전체
				mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
				mv.addObject("movieAttachment2",movieAttachment2); // 파일들 ArrayList로 가져옴 스틸컷
				mv.addObject("movieAttachment3",movieAttachment3); // 파일들 ArrayList로 가져옴 vod
				mv.addObject("movieList1", movieListName); // 클릭 이름 가져옴
				mv.addObject("movieList", movieList);      // 전체를 가져옴
				mv.setViewName("MovieManager/MovieManagerUpdate");
			} else {
				throw new ResException("movie DB 불러오기 실패.");
			}
		
			return mv;
		}
		
		
	
	
	
	
	
	// 영화 정보 삭제 이동
	@RequestMapping("MovieManagerDeletePage.do")
	public ModelAndView MovieManagerDeletePage(ModelAndView mv) {
		
			ArrayList<Movie> movListFile = movService.movListON();
			
			System.out.println(movListFile.get(0).getAttachList().get(0).getRenameFileName());
			
			if (movListFile != null) {
				mv.addObject("movListFile", movListFile);
				mv.setViewName("MovieManager/MovieManagerDelete");
			} else {
				throw new ResException("영화 리스트 못불러옴.");
			}
			
			return mv;
	}
	
	// 영화 정보 모달창에서 삭제 눌렀을 때 이동하는 페이지
	@RequestMapping("MoviemanagerDeletePageFile.do")
	public ModelAndView MoviemanagerDeletePageFile(ModelAndView mv,
			HttpServletRequest request,
			int MovieNo) {
		
		
		
		
		// movieNo를 가지고 movie를 셀렉해옴
		ArrayList<Movie> resultMovie = movService.selectDeleteMovie(MovieNo);
		Movie movie1 =  resultMovie.get(0);
		// 어태치먼트에서 무비No를 가지고 파일들을 가져옴
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(resultMovie.get(0).getMovieNo()); // 포스터
		ArrayList<Attachment> movieAttachment2 = movService.movAttachmentList2(resultMovie.get(0).getMovieNo()); // 스틸컷
		ArrayList<Attachment> movieAttachment3 = movService.movAttachmentList3(resultMovie.get(0).getMovieNo()); // vod

		System.out.println("resultMovie : " + resultMovie);
		System.out.println("movieAttachment1 : " + movieAttachment1);
		System.out.println("movieAttachment2 : " + movieAttachment2);
		System.out.println("movieAttachment3 : " + movieAttachment3);
		
		// 해당 무비들의 파일을 파일들을 삭제한다
		
		// 해당 movie의 개봉상태를 바꿈
		int resultdeleteMovie = movService.YNupdateMovie(movie1);
		
		// 다시 delete 페이지를 띄워줘야하니 전체를 가져옴
		ArrayList<Movie> movListFile = movService.movListON();
		
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerDelete");
		return mv;
	}
	
	// 영화 정보 모달창에서 삭제 눌렀을 때 이동하는 페이지
		@RequestMapping("MoviemanagerDeletePageFile2.do")
		public ModelAndView MoviemanagerDeletePageFile2(ModelAndView mv,
				HttpServletRequest request,
				int MovieNo) {
			
			
			
			
			// movieNo를 가지고 movie를 셀렉해옴
			ArrayList<Movie> resultMovie = movService.selectDeleteMovie(MovieNo);
			Movie movie1 =  resultMovie.get(0);
			// 어태치먼트에서 무비No를 가지고 파일들을 가져옴
			ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(resultMovie.get(0).getMovieNo()); // 포스터
			ArrayList<Attachment> movieAttachment2 = movService.movAttachmentList2(resultMovie.get(0).getMovieNo()); // 스틸컷
			ArrayList<Attachment> movieAttachment3 = movService.movAttachmentList3(resultMovie.get(0).getMovieNo()); // vod

			System.out.println("resultMovie : " + resultMovie);
			System.out.println("movieAttachment1 : " + movieAttachment1);
			System.out.println("movieAttachment2 : " + movieAttachment2);
			System.out.println("movieAttachment3 : " + movieAttachment3);
			
			// 해당 무비들의 파일을 파일들을 삭제한다
			
			// 해당 movie의 개봉상태를 바꿈
			int resultdeleteMovie = movService.YNupdateMovie2(movie1);
			
			// 다시 delete 페이지를 띄워줘야하니 전체를 가져옴
			ArrayList<Movie> movListFile = movService.movListON();
			
			mv.addObject("movListFile", movListFile);
			mv.setViewName("MovieManager/MovieManagerDelete");
			return mv;
		}
	
	// 영화 상영 등록 이동
	@RequestMapping("MovieManagerScreenInsert.do")
	public ModelAndView MovieManagerScreenInsert(ModelAndView mv) {
		
		
		ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
		ArrayList<Movie> movieListName = movService.movList1(); // 1번을 가져옴
		
		System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
		System.out.println("이게 보임");
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieListName.get(0).getMovieNo()); // 포스터가 있는 어태치를 가져옴
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		// movie_Res 1번의 선택된 리스트를 불러옴
		ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieListName.get(0).getMovieNo());
		System.out.println("처음 movie_ResList : " + movie_ResList);
		
		
		
		
		if(movie_ResList != null) {
		mv.addObject("movieResList",movie_ResList);
		mv.addObject("movieArea",MOVIE_AREA);
		mv.addObject("movieAttachment1",movieAttachment1);
		mv.addObject("movieListName",movieListName);
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerScreenInsert");
		} else {
			throw new MovieManagerException("영화 상영페이지 불러오기에 실패하였습니다. No1번의 영화 정보가 존재하지 않습니다.");
		}
		return mv;
	}
	
	// 영화 상영 이름 바꾸면 들어가는 페이지
	@RequestMapping("MovieManagerScreenInsertName.do")
	public ModelAndView MovieManagerScreenInsertName(ModelAndView mv, String MovieName) {
		System.out.println("상영 이름 바꾸면 들어가지는 페이지");
		// 아래는 전체를 가져옴
		ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
		ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
		
		System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
		System.out.println("이게 보임");
		
		// 아래부터는 선택된 값 1개를 가져옴
		ArrayList<Movie> movieListName = movService.movListName(MovieName);
		ArrayList<Movie> movieList = movService.movList(); // 전체를 가져옴
		
		System.out.println("movieNo 찾기전");
		int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
		System.out.println("movieNo : " + movieNo);
		System.out.println("movieAttachment 찾으려고 하는중");
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		// movie_Res 선택된 리스트를 불러옴
		ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieNo);
		System.out.println("선택 movie_ResList : " + movie_ResList);
		
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터가 있는 어태치를 가져옴
		
		if(movieAttachment1 == null) { // 포스터가 없다면
			throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
		}
		System.out.println("Attachment1 : " + movieAttachment1.get(0));
		
		
		mv.addObject("movieResList", movie_ResList);// 선택된 resList 보내줌
		mv.addObject("movieArea",MOVIE_AREA); // 상영관 List 보내줌
		mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
		mv.addObject("movieListName", movieListName); // 클릭 이름 가져옴
		mv.addObject("movieList", movieList);      // 전체를 가져옴
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerScreenInsert");
		return mv;
	}
	
		// 영화 상영 지역 변경 버튼 누르면 들어가는 페이지
		@RequestMapping("MovieManagerScreenInsertbutton.do")
		public ModelAndView MovieManagerScreenInsertbutton(ModelAndView mv, String itemList) {
			System.out.println("영화 상영 지역 변경 버튼 누르면 오는 페이지");
			// 지역명과 영화이름을 split으로 각각 변수에 담음
			String MovieAreaName = itemList.split("/")[0];
			String MovieName = itemList.split("/")[1];
			System.out.println("MovieAreaName : " + MovieAreaName);
			System.out.println("MovieName : " + MovieName);
			
			
			// 아래는 전체를 가져옴
			ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
			ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
			
			System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
			System.out.println("이게 보임");
			
			// 아래부터는 선택된 값 1개를 가져옴
			ArrayList<Movie> movieListName = movService.movListName(MovieName);
			ArrayList<Movie> movieList = movService.movList(); // 1번을 가져옴
			
			System.out.println("movieNo 찾기전");
			int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
			System.out.println("movieNo : " + movieNo);
			System.out.println("movieAttachment 찾으려고 하는중");
			
			// 아래는 상영관 페이지 불러오기
			System.out.println("상영관 정보를 불러옴");
			ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
			
			// movie_Res 선택된 리스트를 불러옴
			ArrayList<Movie_Res>movie_ResList1 = movService.selectmovResList(movieNo);
			System.out.println("선택 movie_ResList : " + movie_ResList1);
			// 가져온 movie_Res를 영화관지역을 선택한 것으로 set하고 다시 select 해옴
			Movie_Res movie_ResList2;
			movie_ResList2 = movie_ResList1.get(0);
			movie_ResList2.setMaName(MovieAreaName);
			System.out.println("movie_ResList2 : " + movie_ResList2);
			
			ArrayList<Movie_Res>movie_ResList3 = movService.selectmovResList2(movie_ResList2);
			System.out.println("movie_ResList3 : " + movie_ResList3);
			
					
			
			ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터가 있는 어태치를 가져옴
			
			if(movieAttachment1 == null) { // 포스터가 없다면
				throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
			}
			System.out.println("Attachment1 : " + movieAttachment1.get(0));
			
			mv.addObject("MovieAreaName",MovieAreaName); // 선택된 상영관 이름 보내줌
			mv.addObject("movieResList", movie_ResList3);// 선택된 resList 보내줌
			mv.addObject("movieArea",MOVIE_AREA); // 상영관 List 보내줌
			mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
			mv.addObject("movieListName", movieListName); // 클릭 이름 가져옴
			mv.addObject("movieList", movieList);      // 전체를 가져옴
			mv.addObject("movListFile", movListFile);
			mv.setViewName("MovieManager/MovieManagerScreenInsert");
			return mv;
		}
		
	// 영화 아래쪽 이름 바꾸면 사진만 바뀌는 Ajax 컨트롤러
	@ResponseBody	
	@RequestMapping("MovieManagerResAjax.do")
	public String MovieManagerResAjax(
			HttpServletRequest request,
			@RequestBody String obj) {
		System.out.println("아래 이름 바꾸면 들어오는 Ajax 컨트롤러");
		System.out.println("obj : " + obj);
		String MovieName = obj;
		System.out.println("MovieName : " + MovieName);
		
		
		ArrayList<Movie> movieListName = movService.movListName(MovieName);
		
		System.out.println(movieListName);
		System.out.println("movieNo 찾기전");
		int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
		System.out.println("movieNo : " + movieNo);
		System.out.println("movieAttachment 찾으려고 하는중");
		
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터
		String root = movieAttachment1.get(0).getFilePath() + movieAttachment1.get(0).getRenameFileName();
		
		return root;
	}
	
	// 영화 상영추가에서 검색하면 바뀌는 곳
	@RequestMapping("MovieManagerResAjaxSearch.do")
	public ModelAndView MovieManagerResAjaxSearch(
			HttpServletRequest request, ModelAndView mv, String search) {
		System.out.println("검색하면 들어오는 Ajax 컨트롤러");
		
		ArrayList<Movie> movieListName = movService.movListName(search);
		if(movieListName.isEmpty() || movieListName == null) {
			ArrayList<Movie> movieList = movService.movList();
			int resultOX = 5;
			mv.addObject("resultOX",resultOX);
			mv.addObject("movieList", movieList);
			mv.setViewName("MovieManager/MovieManagerInsert");
			return mv;
		}
		
		ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
		ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
		
		System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
		System.out.println("이게 보임");
		
		// 아래부터는 선택된 값 1개를 가져옴
		ArrayList<Movie> movieList = movService.movList(); // 전체를 가져옴
		
		System.out.println("movieNo 찾기전");
		int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
		System.out.println("movieNo : " + movieNo);
		System.out.println("movieAttachment 찾으려고 하는중");
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		// movie_Res 선택된 리스트를 불러옴
		ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieNo);
		System.out.println("선택 movie_ResList : " + movie_ResList);
		
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터가 있는 어태치를 가져옴
		
		if(movieAttachment1 == null) { // 포스터가 없다면
			throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
		}
		System.out.println("Attachment1 : " + movieAttachment1.get(0));
		
		
		mv.addObject("movieResList", movie_ResList);// 선택된 resList 보내줌
		mv.addObject("movieArea",MOVIE_AREA); // 상영관 List 보내줌
		mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
		mv.addObject("movieListName", movieListName); // 클릭 이름 가져옴
		mv.addObject("movieList", movieList);      // 전체를 가져옴
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerScreenInsert");
		return mv;
	}
	
	// 영화 아래쪽 이름 바꾸면 개봉날짜를 출력하는 Ajax 컨트롤러
		@ResponseBody	
		@RequestMapping("MovieManagerResAjax2.do")
		public String MovieManagerResAjax2(
				HttpServletRequest request,
				@RequestBody String obj) {
			System.out.println("아래 이름 바꾸면 들어오는 달력 Ajax 컨트롤러");
			System.out.println("obj : " + obj);
			String MovieName = obj;
			System.out.println("MovieName : " + MovieName);
			
			ArrayList<Movie> movieListName = movService.movListName(MovieName);
			System.out.println(movieListName);
			System.out.println("movieNo 찾기전");
			int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
			System.out.println("movieNo : " + movieNo);
			System.out.println("movieAttachment 찾으려고 하는중");
			SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMddHHmmss");
			String strDate = transFormat.format(movieListName.get(0).getMovieRdate());
			System.out.println("strDate : " + strDate);
			return strDate;
		}
		
	// 영화 지역을 변경하면 ajax으로 영화관의 value를 바꾸려는 ajax 컨트롤러
	@ResponseBody	
	@RequestMapping("MovieManagerResRoomNoAjax.do")
	public ArrayList<Movie_Room> MovieManagerResRoomNoAjax(
			HttpServletRequest request,
			@RequestBody String obj) {
		System.out.println("영화지역을 바꾸면 들어오는 Ajax 컨트롤러");
		System.out.println("obj : " + obj);
		String MovieName = obj;
		ArrayList<Movie_Room> movieRoom = movService.movRoomList(obj);
		System.out.println("movieRoom : " + movieRoom);
		
		return movieRoom;
	}
	
	
	
	
	
		
	// 영화 상영지역 상영추가 누르면 insert 하기위해 오는 컨트롤러
	@ResponseBody	
	@RequestMapping("MovieManagerResinsert.do")
	public ModelAndView MovieManagerResinsert(ModelAndView mv,
			HttpServletRequest request,
			@RequestBody List<MovieResListAjax> table_Datas){
		// 아래 ajax 출력 부분
		for(MovieResListAjax s : table_Datas) {
			System.out.println(s.getMovieName());
			System.out.println(s.getMaName());
			System.out.println(s.getRoomNo());
			System.out.println(s.getStartTime());
			System.out.println(s.getEndTime());
			System.out.println(s.getResDate());
			
			ArrayList<Movie> movieListName = movService.movListName(s.getMovieName());
			System.out.println("movieListName : " + movieListName);
			System.out.println("time : " + movieListName.get(0).getMovieStime());
			
			// 시작 시간을 int로 변환
			String movieStime1 = s.getStartTime().split(":")[0];
			String movieStime2 = s.getStartTime().split(":")[1];
			int movieStime3 = Integer.parseInt(movieStime1)*100;
			int movieStime4 = Integer.parseInt(movieStime2);
			int start_time = movieStime3 + movieStime4;
			System.out.println("movieStime : " +  start_time);
			
			String movieEtime = movieListName.get(0).getMovieStime();
			// 끝 시간을 int로 변환
			int movieEtime1 = Integer.parseInt(movieEtime.split("분")[0]);
			System.out.println("movieEtime1 : " + movieEtime1);
			
			int h = movieEtime1 / 60 * 100; // 앞의자리
			int m = movieEtime1 % 60; // 뒤의자리
			int end_time = 0;
			end_time =  start_time + (h + m);
			if(end_time % 100 > 59) {
				end_time += 100; //만약에 계산한 분의 값이 59분을 넘어버리면 시간을 1시간 더 늘려야 하니 +100을 한 것이다.
				end_time -= 60; // 만약에 시간을 1시간 올렸으니 결국 뒤에 분은 마이너스 60을 해주면 계산이 된다.
			}
			String start_timeString = "";
			String end_timeString = "";
			
			// start time을 String으로 만듬
			if(start_time < 1000) {
				start_timeString = "0" + start_time;
			} else {
				start_timeString = start_time +"";
			}
			
			// end time을 String으로 만듬
			if(end_time < 1000) {
				end_timeString = "0" + end_time;
			} else {
				end_timeString = end_time + "";
			}
			
			String s1 = start_timeString.substring(0,2);
			String s2 = start_timeString.substring(2,4);
			
			String e1 = end_timeString.substring(0,2);
			String e2 = end_timeString.substring(2,4);
			
			String sumString1 = s1 + ":" + s2;
			String sumString2 = e1 + ":" + e2;
			s.setStartTime(sumString1);
			s.setEndTime(sumString2);
			int resResult = movService.insertMovieRes(s);
		}
		
		
		
		
		
		// 아래는 첫 insert로 가는 고정 코드
		ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
		ArrayList<Movie> movieListName = movService.movList1(); // 1번을 가져옴
		
		System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
		System.out.println("이게 보임");
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieListName.get(0).getMovieNo()); // 포스터가 있는 어태치를 가져옴
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		// movie_Res 1번의 선택된 리스트를 불러옴
		ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieListName.get(0).getMovieNo());
		System.out.println("처음 movie_ResList : " + movie_ResList);
		System.out.println("처음 movieListName : " + movieListName);
		
		
		mv.addObject("movieResList",movie_ResList);
		mv.addObject("movieArea",MOVIE_AREA);
		mv.addObject("movieAttachment1",movieAttachment1);
		mv.addObject("movieListName",movieListName);
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerScreenInsert");
		return mv;
	}
	
	
	
	
	
	
	
	// 영화 상영 취소 이동
	@RequestMapping("MovieManagerCancel.do")
	public ModelAndView MovieManagerCancel(ModelAndView mv) {
		
		ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
		ArrayList<Movie> movieListName = movService.movList1(); // 1번을 가져옴
		
		System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
		System.out.println("이게 보임");
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieListName.get(0).getMovieNo()); // 포스터가 있는 어태치를 가져옴
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		// movie_Res 1번의 선택된 리스트를 불러옴
		ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieListName.get(0).getMovieNo());
		System.out.println("처음 movie_ResList : " + movie_ResList);
		System.out.println("처음 movieListName : " + movieListName);
		
		
		
		
		if(movie_ResList != null) {
		mv.addObject("movieResList",movie_ResList);
		mv.addObject("movieArea",MOVIE_AREA);
		mv.addObject("movieAttachment1",movieAttachment1);
		mv.addObject("movieListName",movieListName);
		mv.addObject("movListFile", movListFile);
		mv.setViewName("MovieManager/MovieManagerCancel");
		} else {
			throw new MovieManagerException("영화 상영페이지 불러오기에 실패하였습니다. No1번의 영화 정보가 존재하지 않습니다.");
		}
		return mv;
	}
	
	// 영화 상영 취소 이름 바꾸면 들어가는 페이지
		@RequestMapping("MovieManagerScreenCancelName.do")
		public ModelAndView MovieManagerScreenCancelName(ModelAndView mv, String MovieName) {
			System.out.println("상영 이름 바꾸면 들어가지는 페이지");
			// 아래는 전체를 가져옴
			ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
			ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
			
			System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
			System.out.println("이게 보임");
			
			// 아래부터는 선택된 값 1개를 가져옴
			ArrayList<Movie> movieListName = movService.movListName(MovieName);
			ArrayList<Movie> movieList = movService.movList(); // 1번을 가져옴
			
			System.out.println("movieNo 찾기전");
			int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
			System.out.println("movieNo : " + movieNo);
			System.out.println("movieAttachment 찾으려고 하는중");
			
			// 아래는 상영관 페이지 불러오기
			System.out.println("상영관 정보를 불러옴");
			ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
			
			// movie_Res 선택된 리스트를 불러옴
			ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieNo);
			System.out.println("선택 movie_ResList : " + movie_ResList);
			if(movie_ResList == null) {
				
			}
			System.out.println();
					
					
					
			
			ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터가 있는 어태치를 가져옴
			
			if(movieAttachment1 == null) { // 포스터가 없다면
				throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
			}
			System.out.println("Attachment1 : " + movieAttachment1.get(0));
			
			
			mv.addObject("movieResList", movie_ResList);// 선택된 resList 보내줌
			mv.addObject("movieArea",MOVIE_AREA); // 상영관 List 보내줌
			mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
			mv.addObject("movieListName", movieListName); // 클릭 이름 가져옴
			mv.addObject("movieList", movieList);      // 전체를 가져옴
			mv.addObject("movListFile", movListFile);
			mv.setViewName("MovieManager/MovieManagerCancel");
			return mv;
		}
	
	
			// 영화 상영 취소 지역 변경 버튼 누르면 들어가는 페이지
			/*@ResponseBody*/
			@RequestMapping("MovieManagerCancelInsertbutton.do")
			public ModelAndView MovieManagerCancelInsertbutton(ModelAndView mv, 
					HttpServletRequest request,
					/*@RequestBody */String itemList) {
				System.out.println("영화 상영 취소 지역 변경 버튼 누르면 오는 페이지");
				// 지역명과 영화이름을 split으로 각각 변수에 담음
				String MovieAreaName = itemList.split(",")[0];
				String MovieName = itemList.split(",")[1];
				String MovieDate = itemList.split(",")[2];
				System.out.println("MovieAreaName : " + MovieAreaName);
				System.out.println("MovieName : " + MovieName);
				System.out.println("MovieDate : " + MovieDate);
				
				// String인 MovieDate를 Date형식으로 변환
				DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
				Date MovieDate2 = null;
				try {
					MovieDate2 = sdf.parse(MovieDate);
					System.out.println("Date형식의 MovieDate2 : " + MovieDate2);
				} catch (ParseException e) {
					e.printStackTrace();
				}


				
				
				// 아래는 전체를 가져옴
				ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
				ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
				
				System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
				System.out.println("이게 보임");
				
				// 아래부터는 선택된 값 1개를 가져옴
				ArrayList<Movie> movieListName = movService.movListName(MovieName);
				ArrayList<Movie> movieList = movService.movList(); // 1번을 가져옴
				
				System.out.println("movieNo 찾기전");
				int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
				System.out.println("movieNo : " + movieNo);
				System.out.println("movieAttachment 찾으려고 하는중");
				
				// 아래는 상영관 페이지 불러오기
				System.out.println("상영관 정보를 불러옴");
				ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
				
				// movie_Res 선택된 리스트를 불러옴
				ArrayList<Movie_Res>movie_ResList1 = movService.selectmovResList(movieNo);
				System.out.println("선택 movie_ResList : " + movie_ResList1);
				// 가져온 movie_Res를 영화관지역을 선택한 것으로 set하고 다시 select 해옴
				Movie_Res movie_ResList2;
				movie_ResList2 = movie_ResList1.get(0);
				movie_ResList2.setMaName(MovieAreaName);
				java.sql.Date sqlDate = new java.sql.Date(MovieDate2.getTime());
				movie_ResList2.setResDate(sqlDate);
				System.out.println("movie_ResList2 : " + movie_ResList2);
				
				ArrayList<Movie_Res>movie_ResList3 = movService.selectmovResList3(movie_ResList2);
				System.out.println("movie_ResList3 : " + movie_ResList3);
				
						
				
				ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터가 있는 어태치를 가져옴
				
				if(movieAttachment1 == null) { // 포스터가 없다면
					throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
				}
				System.out.println("Attachment1 : " + movieAttachment1.get(0));
				
				mv.addObject("MovieAreaName",MovieAreaName); // 선택된 상영관 이름 보내줌
				mv.addObject("movieResList", movie_ResList3);// 선택된 resList 보내줌
				mv.addObject("movieArea",MOVIE_AREA); // 상영관 List 보내줌
				mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
				mv.addObject("movieListName", movieListName); // 클릭 이름 가져옴
				mv.addObject("movieList", movieList);      // 전체를 가져옴
				mv.addObject("movListFile", movListFile);
				mv.setViewName("MovieManager/MovieManagerCancel");
				return mv;
			}
			
			
			// 영화 상영 취소 지역 변경 버튼 눌렀는데 날짜값이 없으면 들어가는 페이지
		/*@ResponseBody*/
		@RequestMapping("MovieManagerCancelInsertbutton2.do")
		public ModelAndView MovieManagerCancelInsertbutton2(ModelAndView mv, 
				HttpServletRequest request,
				/*@RequestBody */String itemList) {
			System.out.println("영화 상영 취소 지역 변경 버튼 누르면 오는 페이지");
			// 지역명과 영화이름을 split으로 각각 변수에 담음
			String MovieAreaName = itemList.split(",")[0];
			String MovieName = itemList.split(",")[1];
			System.out.println("MovieAreaName : " + MovieAreaName);
			System.out.println("MovieName : " + MovieName);
			
			// 아래는 전체를 가져옴
			ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
			ArrayList<Movie> movieList1 = movService.movList1(); // 1번을 가져옴
			
			System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
			System.out.println("이게 보임");
			
			// 아래부터는 선택된 값 1개를 가져옴
			ArrayList<Movie> movieListName = movService.movListName(MovieName);
			ArrayList<Movie> movieList = movService.movList(); // 1번을 가져옴
			
			System.out.println("movieNo 찾기전");
			int movieNo = movieListName.get(0).getMovieNo(); // 선택된 movieNo를 변수로 저장
			System.out.println("movieNo : " + movieNo);
			System.out.println("movieAttachment 찾으려고 하는중");
			
			// 아래는 상영관 페이지 불러오기
			System.out.println("상영관 정보를 불러옴");
			ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
			
			// movie_Res 선택된 리스트를 불러옴
			ArrayList<Movie_Res>movie_ResList1 = movService.selectmovResList(movieNo);
			System.out.println("선택 movie_ResList : " + movie_ResList1);
			// 가져온 movie_Res를 영화관지역을 선택한 것으로 set하고 다시 select 해옴
			Movie_Res movie_ResList2;
			movie_ResList2 = movie_ResList1.get(0);
			movie_ResList2.setMaName(MovieAreaName);
			System.out.println("movie_ResList2 : " + movie_ResList2);
			
			ArrayList<Movie_Res>movie_ResList3 = movService.selectmovResList2(movie_ResList2); // 여기를 수정해야함
			System.out.println("movie_ResList3 : " + movie_ResList3);
			
					
			
			ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieNo); // 포스터가 있는 어태치를 가져옴
			
			if(movieAttachment1 == null) { // 포스터가 없다면
				throw new ResException("movie Attachment 사진 동영상 불러오기 실패.");
			}
			System.out.println("Attachment1 : " + movieAttachment1.get(0));
			
			mv.addObject("MovieAreaName",MovieAreaName); // 선택된 상영관 이름 보내줌
			mv.addObject("movieResList", movie_ResList3);// 선택된 resList 보내줌
			mv.addObject("movieArea",MOVIE_AREA); // 상영관 List 보내줌
			mv.addObject("movieAttachment1",movieAttachment1); // 파일들 ArrayList로 가져옴 포스터
			mv.addObject("movieListName", movieListName); // 클릭 이름 가져옴
			mv.addObject("movieList", movieList);      // 전체를 가져옴
			mv.addObject("movListFile", movListFile);
			mv.setViewName("MovieManager/MovieManagerCancel");
			return mv;
		}
	
			
	// 영화 상영 취소 상영취소 버튼을 눌렀을때 Movie_res를 삭제하는 페이지
	@RequestMapping("MovieManagerCancelOfButton.do")
	public ModelAndView MovieManagerCancelOfButton(ModelAndView mv, String check) {
		mv.setViewName("MovieManager/MovieManagerCancel");
		System.out.println("상영취소 버튼을 눌렀을 때 들어옴");
		System.out.println("check : " + check);
		
		String[] arrString = check.split(",");
		System.out.println("arrString : " + arrString.toString());
		int[] arrInt = new int[arrString.length];
		for(int i = 0; i < arrString.length; i++) {
			arrInt[i] = Integer.parseInt(arrString[i]);
			System.out.println("arrInt : " + arrInt[i]);
		}
		
		// 현재 상영번호의 RES_INFO와 ROOM_CHAIR를 비교해서 똑같으면 true 틀리면 false로 넘김
		Movie_Res_Room res_info = null;
		String num1 = null;
		String num2 = null;
		int result = 0;
		for(int j = 0; j < arrInt.length; j++) {
		res_info = movService.resInfoChk(arrInt[j]);
		
			if(res_info.getResInfo().equals(res_info.getRoomChair())) {
				System.out.println("예약인원이 없습니다.");
				result = movService.resInfoDelete(arrInt[j]);
				if(result == 1) {
					
				System.out.println("상영번호 : " + arrInt[j] +"를 성공적으로 삭제하였습니다.");
				}
			} else {
				System.out.println("예약인원이 있습니다.");
			}
		}
		
		
		
		ArrayList<Movie> movListFile = movService.movListON(); // movie전체와 전체 파일들을 가져옴
		ArrayList<Movie> movieListName = movService.movList1(); // 1번을 가져옴
		
		System.out.println("movListFile : " + movListFile.get(0).getAttachList().get(0).getRenameFileName());
		System.out.println("이게 보임");
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movieListName.get(0).getMovieNo()); // 포스터가 있는 어태치를 가져옴
		
		// 아래는 상영관 페이지 불러오기
		System.out.println("상영관 정보를 불러옴");
		ArrayList<Movie_Area> MOVIE_AREA = movService.movListAREA();
		
		// movie_Res 1번의 선택된 리스트를 불러옴
		ArrayList<Movie_Res>movie_ResList = movService.selectmovResList(movieListName.get(0).getMovieNo());
		System.out.println("처음 movie_ResList : " + movie_ResList);
		System.out.println("처음 movieListName : " + movieListName);
		
		
		
		
		if(movie_ResList != null) {
		mv.addObject("movieResList",movie_ResList);
		mv.addObject("movieArea",MOVIE_AREA);
		mv.addObject("movieAttachment1",movieAttachment1);
		mv.addObject("movieListName",movieListName);
		mv.addObject("movListFile", movListFile);
		
		} else {
			throw new MovieManagerException("영화 상영페이지 불러오기에 실패하였습니다. No1번의 영화 정보가 존재하지 않습니다.");
		}
		
		return mv;
	}
	
	
	
	
	// movid 파일 업로드 + 영화정보 등록부분
	@RequestMapping("upload.do")
    public ModelAndView upload(Movie m,
            @RequestParam(value="file1", required = false) MultipartFile mf, 
            @RequestParam(value="file2", required = false) MultipartFile mf2,
            @RequestParam(value="file3", required = false) MultipartFile mf3,
            @RequestParam(value="file4", required = false) MultipartFile mf4,
            @RequestParam(value="file5", required = false) MultipartFile mf5,
            HttpServletRequest request) {
		
	
	System.out.println("m의 정보 : " + m);
	
		
	
	
	// 경로를 설정함
	String root = request.getSession().getServletContext().getRealPath("resources");	
	
	String SAVE_PATH = root + "\\images\\movie_image\\";
	String SAVE_PATH2 = root + "\\images\\movie_vod\\";
	
	String DB_SAVE_PATH = "\\resources\\images\\movie_image\\";
	String DB_SAVE_PATH2 = "\\resources\\images\\movie_vod\\";
	
	File folder = new File(SAVE_PATH);
	File folder2 = new File(SAVE_PATH2);	// savePath 폴더를 불러와서
	// 해당 폴더 경로가 존재하는지 확인하고
	if(!folder.exists()) {	// 존재하지 않는다면
		folder.mkdirs();	// 해당 경로를 먼저 생성한다
	}
	if(!folder2.exists()) {	// 존재하지 않는다면
		folder2.mkdirs();	// 해당 경로를 먼저 생성한다
	}
	
	
		
	ModelAndView mv = new ModelAndView("MovieManager/MovieManagerInsert");
 
            System.out.println("경로 : " + SAVE_PATH);
            System.out.println("경로 : " + SAVE_PATH2);
            System.out.println("DB경로 : " + DB_SAVE_PATH);
            System.out.println("DB경로 : " + DB_SAVE_PATH2);
            
            String originalFileName1 = mf.getOriginalFilename();
            String originalFileName2 = mf2.getOriginalFilename();
            String originalFileName3 = mf3.getOriginalFilename();
            String originalFileName4 = mf4.getOriginalFilename();
            String originalFileName5 = mf5.getOriginalFilename();
            
            System.out.println("파일이름 : " + originalFileName1);
            System.out.println("파일이름 : " + originalFileName2);
            System.out.println("파일이름 : " + originalFileName3);
            System.out.println("파일이름 : " + originalFileName4);
            System.out.println("파일이름 : " + originalFileName5);
            
            long fileSize1 = mf.getSize();
            long fileSize2 = mf2.getSize();
            long fileSize3 = mf3.getSize();
            long fileSize4 = mf4.getSize();
            long fileSize5 = mf5.getSize();
            
            
            
            
            // System.currentTimeMillis();
            
            //날짜 시간값으로 파일명 변경
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            
    		String originFileName1 = mf.getOriginalFilename();
    		String originFileName2 = mf2.getOriginalFilename();
    		String originFileName3 = mf3.getOriginalFilename();
    		String originFileName4 = mf4.getOriginalFilename();
    		String originFileName5 = mf5.getOriginalFilename();
    		
    		String renameFileName1 = sdf.format(new Date())
    				+ "1" + originFileName1.substring(originFileName1.lastIndexOf("."));
    		
    		 String renamePath1 = renameFileName1;
    		 
    		 String renameFileName2 = sdf.format(new Date())
     				+ "2" + originFileName2.substring(originFileName2.lastIndexOf("."));
     		
     		 String renamePath2 = renameFileName2;
     		 
     		String renameFileName3 = sdf.format(new Date())
    				+ "3" + originFileName3.substring(originFileName3.lastIndexOf("."));
    		
    		 String renamePath3 = renameFileName3;
    		 
    		 String renameFileName4 = sdf.format(new Date())
     				+ "4" + originFileName4.substring(originFileName4.lastIndexOf("."));
     		
     		 String renamePath4 = renameFileName4;
     		 
     		String renameFileName5 = sdf.format(new Date())
    				+ "5" + originFileName5.substring(originFileName5.lastIndexOf("."));
    		
    		 String renamePath5 = renameFileName5;
    		 
    		 System.out.println("변경 시간 이름 : " + renamePath1);
    		 System.out.println("변경 시간 이름 : " + renamePath2);
    		 System.out.println("변경 시간 이름 : " + renamePath3);
    		 System.out.println("변경 시간 이름 : " + renamePath4);
    		 System.out.println("변경 시간 이름 : " + renamePath5);
    		 
    		 String safeFile1 = SAVE_PATH + "" + renamePath1;
             String safeFile2 = SAVE_PATH + "" + renamePath2;
             String safeFile3 = SAVE_PATH + "" + renamePath3;
             String safeFile4 = SAVE_PATH + "" + renamePath4;
             String safeFile5 = SAVE_PATH2 + "" + renamePath5;
             
             String safeOFile1 = SAVE_PATH + "" + originFileName1;
             String safeOFile2 = SAVE_PATH + "" + originFileName2;
             String safeOFile3 = SAVE_PATH + "" + originFileName3;
             String safeOFile4 = SAVE_PATH + "" + originFileName4;
             String safeOFile5 = SAVE_PATH2 + "" + originFileName5;
    		 
    		 
    		 // 실험상의 object File
    		 Object[] fullFileNameObject = {m,SAVE_PATH,originalFileName1,renamePath1};
    		 
    		 for(int i = 0; i < fullFileNameObject.length; i++) {
    		 System.out.println("fullFileNameObject : " + fullFileNameObject[i]);
    		 }
    		 
    		 // 여기까지
    		// 영화정보를 등록함
    		// resultOX = 영화정보와 DB가 제대로 들어갔는지를 확인함
    		int resultOX = 0;
            int result = movService.insertMovieManager(m);
            if(result >=1) {
            	System.out.println("영화 정보 DB 등록에 성공하였습니다.");
            	resultOX = 1;
            } else {
            	throw new MovieManagerException("영화정보 DB등록에 실패하였습니다.");
            }
            // movie의 No를 알아옴
        	ArrayList<Movie> resultMovieNo = movService.selectMovieNo(m.getMovieName());
        	int movieNo = resultMovieNo.get(0).getMovieNo();
        	
        	System.out.println("영화 번호 알아오기 : " + movieNo);
        	
        	
	   		 // 해쉬맵으로 저장하기
	   		 HashMap<Object, Object> fullFileName1 = new HashMap<>();
	   		 fullFileName1.put("name1", 20);
	   		 fullFileName1.put("name2", DB_SAVE_PATH);
	   		 fullFileName1.put("name3", originalFileName1);
	   		 fullFileName1.put("name4", renamePath1);
	   		 fullFileName1.put("name5", movieNo);
	   		 
	   		 
	   		 HashMap<Object, Object> fullFileName2 = new HashMap<>();
	   		 fullFileName2.put("name1", 30);
	   		 fullFileName2.put("name2", DB_SAVE_PATH);
	   		 fullFileName2.put("name3", originalFileName2);
	   		 fullFileName2.put("name4", renamePath2);
	   		 fullFileName2.put("name5", movieNo);
	   		 
	   		 HashMap<Object, Object> fullFileName3 = new HashMap<>();
	   		 fullFileName3.put("name1", 30);
	   		 fullFileName3.put("name2", DB_SAVE_PATH);
	   		 fullFileName3.put("name3", originalFileName3);
	   		 fullFileName3.put("name4", renamePath3);
	   		 fullFileName3.put("name5", movieNo);
	   		 
	   		 HashMap<Object, Object> fullFileName4 = new HashMap<>();
	   		 fullFileName4.put("name1", 30);
	   		 fullFileName4.put("name2", DB_SAVE_PATH);
	   		 fullFileName4.put("name3", originalFileName4);
	   		 fullFileName4.put("name4", renamePath4);
	   		 fullFileName4.put("name5", movieNo);
	   		 
	   		 HashMap<Object, Object> fullFileName5 = new HashMap<>();
	   		 fullFileName5.put("name1", 40);
	   		 fullFileName5.put("name2", DB_SAVE_PATH2);
	   		 fullFileName5.put("name3", originalFileName5);
	   		 fullFileName5.put("name4", renamePath5);
	   		 fullFileName5.put("name5", movieNo);
        	
        	
        	
        	
	   		int result2 =  movService.insertFileMovieManager(fullFileName1);
	   		result2 =  movService.insertFileMovieManager(fullFileName2);
	   		result2 =  movService.insertFileMovieManager(fullFileName3);
	   		result2 =  movService.insertFileMovieManager(fullFileName4);
	   		result2 =  movService.insertFileMovieManager(fullFileName5);
	   		
	   		if(result2 >= 1) {
	   			System.out.println("영화 정보 파일를 DB에 성공적으로 추가하였습니다.");
	   			resultOX = 1;
	   		} else {
	   			throw new MovieManagerException("영화 정보 파일을 DB등록에 실패하였습니다.");
	   		}
	   		
            
            try {
            	mv.addObject("resultOX",resultOX);
            	mf.transferTo(new File(safeFile1));
            	mf2.transferTo(new File(safeFile2));
            	mf3.transferTo(new File(safeFile3));
            	mf4.transferTo(new File(safeFile4));
            	mf5.transferTo(new File(safeFile5));
            	
               } catch (IllegalStateException e) {
            	   throw new MovieManagerException("영화 파일 추가에 실패했습니다.");
                } catch (IOException e) {
                	throw new MovieManagerException("영화 파일 추가에 실패했습니다.");
                }
            
            return mv;
        }
	
	
	
	
	
	// 무비 업데이트 이클립스 파일 삭제 생성과 DB 수정
	@RequestMapping("update.do")
    public ModelAndView update(Movie m,
            @RequestParam(value="file1", required = false) MultipartFile mf, 
            @RequestParam(value="file2", required = false) MultipartFile mf2,
            @RequestParam(value="file3", required = false) MultipartFile mf3,
            @RequestParam(value="file4", required = false) MultipartFile mf4,
            @RequestParam(value="file5", required = false) MultipartFile mf5,
            HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView("MovieManager/MovieManagerInsert");
		System.out.println("업데이트 m의 정보 : " + m);
		System.out.println("mf : " + mf.getOriginalFilename());
		System.out.println("mf2 : " + mf2);
		System.out.println("mf3 : " + mf3);
		System.out.println("mf4 : " + mf4);
		System.out.println("mf5 : " + mf5);
		// movie의 No를 알아옴
		System.out.println("이름찾기 직전");
    	ArrayList<Movie> resultMovieNo = movService.selectMovieNo(m.getMovieName());
    	Movie movie1 = m;
    	movie1.setMovieNo(resultMovieNo.get(0).getMovieNo());
    	System.out.println("movie1 : " + movie1);
    	int movieNo = resultMovieNo.get(0).getMovieNo();
    	int result = movService.updateMovieManager(movie1); // Movie update 하는 구문
    	System.out.println("update 끝나고 밖으로 나옴");
		
    	
    	// 경로를 설정함
    			String root = request.getSession().getServletContext().getRealPath("resources");	
    			
    			String SAVE_PATH = root + "\\images\\movie_image\\";
    			String SAVE_PATH2 = root + "\\images\\movie_vod\\";
    			
    			String DB_SAVE_PATH = "\\resources\\images\\movie_image\\";
    			String DB_SAVE_PATH2 = "\\resources\\images\\movie_vod\\";
    			
    			File folder = new File(SAVE_PATH);
    			File folder2 = new File(SAVE_PATH2);	// savePath 폴더를 불러와서
    			// 해당 폴더 경로가 존재하는지 확인하고
    			if(!folder.exists()) {	// 존재하지 않는다면
    				folder.mkdirs();	// 해당 경로를 먼저 생성한다
    			}
    			if(!folder2.exists()) {	// 존재하지 않는다면
    				folder2.mkdirs();	// 해당 경로를 먼저 생성한다
    			}

	            System.out.println("경로 : " + SAVE_PATH);
	            System.out.println("경로 : " + SAVE_PATH2);
	            System.out.println("DB경로 : " + DB_SAVE_PATH);
	            System.out.println("DB경로 : " + DB_SAVE_PATH2);
	            
    			
		
		// mf mf2 mf3 mf4 mf5가 있는지를 먼저 판단해야함
		if(mf.getOriginalFilename() != "" || mf2.getOriginalFilename() != "" || mf3.getOriginalFilename() != ""|| mf4.getOriginalFilename() != ""|| mf5.getOriginalFilename() != "") {
		System.out.println("이프로 들어옴");
		
		// System.currentTimeMillis();
        
        //날짜 시간값으로 파일명 변경
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
        
        // 무비 No를 통해 어태치먼트에 현재 DB에 저장되어있는 것을 가져온다.
		ArrayList<Attachment> movieAttachment1 = movService.movAttachmentList1(movie1.getMovieNo()); // 포스터
		ArrayList<Attachment> movieAttachment2 = movService.movAttachmentList2(movie1.getMovieNo()); // 스틸컷
		ArrayList<Attachment> movieAttachment3 = movService.movAttachmentList3(movie1.getMovieNo()); // vod
		
		int result2 = 0;
		// 일단 이클립스에 있는 파일을 삭제하고 DB에 있는것들을 update해야함
		if(mf.getOriginalFilename() != "") {
			
			
			 String originalFileName1 = mf.getOriginalFilename();
			 System.out.println("파일이름 : " + originalFileName1);
			 long fileSize1 = mf.getSize();
			 
			 String originFileName1 = mf.getOriginalFilename();
			 String renameFileName1 = sdf.format(new Date())
	    				+ "1" + originFileName1.substring(originFileName1.lastIndexOf("."));
			 String renamePath1 = renameFileName1;
			 
			 System.out.println("변경 시간 이름 : " + renamePath1);
			 String safeFile1 = SAVE_PATH + "" + renamePath1;
			 String safeOFile1 = SAVE_PATH + "" + originFileName1;
			 
			 deleteFile1(movieAttachment1.get(0).getRenameFileName(), request); // 리네임 파일 삭제
			 
			 int resultdelete = movService.deleteMovieManager(movieAttachment1.get(0).getRenameFileName()); // 삭제함
			 
			 HashMap<Object, Object> fullFileName1 = new HashMap<>();
	   		 fullFileName1.put("name1", 20);
	   		 fullFileName1.put("name2", DB_SAVE_PATH);
	   		 fullFileName1.put("name3", originalFileName1);
	   		 fullFileName1.put("name4", renamePath1);
	   		 fullFileName1.put("name5", movieNo);
	   		 
	   		 // DB에 있는 것을 싹다 삭제하고 새로 추가함
		   	 result2 =  movService.insertFileMovieManager(fullFileName1); // 새로 추가함
		   	 
		   	try { 
		   	mf.transferTo(new File(safeFile1));
		   	}  catch (IllegalStateException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
		}
		
		if(mf2.getOriginalFilename() != "") {
			String originalFileName2 = mf2.getOriginalFilename();
			System.out.println("파일이름 : " + originalFileName2);
			long fileSize2 = mf2.getSize();
			String originFileName2 = mf2.getOriginalFilename();
			String renameFileName2 = sdf.format(new Date())
     				+ "2" + originFileName2.substring(originFileName2.lastIndexOf("."));
     		
     		 String renamePath2 = renameFileName2;
     		 
     		System.out.println("변경 시간 이름 : " + renamePath2);
     		String safeFile2 = SAVE_PATH + "" + renamePath2;
     		String safeOFile2 = SAVE_PATH + "" + originFileName2;
     		
     		deleteFile1(movieAttachment2.get(0).getRenameFileName(), request);
     		int resultdelete = movService.deleteMovieManager(movieAttachment2.get(0).getRenameFileName()); // 삭제함
     		
     		HashMap<Object, Object> fullFileName2 = new HashMap<>();
	   		 fullFileName2.put("name1", 30);
	   		 fullFileName2.put("name2", DB_SAVE_PATH);
	   		 fullFileName2.put("name3", originalFileName2);
	   		 fullFileName2.put("name4", renamePath2);
	   		 fullFileName2.put("name5", movieNo);
	   		 
	   		result2 =  movService.insertFileMovieManager(fullFileName2);
	   		
	   		try { 
			   	mf2.transferTo(new File(safeFile2));
			   	}  catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
		}
		
		if(mf3.getOriginalFilename() != "") {
			String originalFileName3 = mf3.getOriginalFilename();
			System.out.println("파일이름 : " + originalFileName3);
			long fileSize3 = mf3.getSize();
			String originFileName3 = mf3.getOriginalFilename();
			String renameFileName3 = sdf.format(new Date())
     				+ "3" + originFileName3.substring(originFileName3.lastIndexOf("."));
     		
     		 String renamePath3 = renameFileName3;
     		 
     		System.out.println("변경 시간 이름 : " + renamePath3);
     		String safeFile3 = SAVE_PATH + "" + renamePath3;
     		String safeOFile3 = SAVE_PATH + "" + originFileName3;
     		
     		deleteFile1(movieAttachment2.get(1).getRenameFileName(), request);
     		deleteFile1(movieAttachment2.get(1).getOriginFileName(), request);
     		int resultdelete = movService.deleteMovieManager(movieAttachment2.get(1).getRenameFileName()); // 삭제함
     		
     		HashMap<Object, Object> fullFileName3 = new HashMap<>();
	   		 fullFileName3.put("name1", 30);
	   		 fullFileName3.put("name2", DB_SAVE_PATH);
	   		 fullFileName3.put("name3", originalFileName3);
	   		 fullFileName3.put("name4", renamePath3);
	   		 fullFileName3.put("name5", movieNo);
	   		 
	   		result2 =  movService.insertFileMovieManager(fullFileName3);
	   		
	   		try { 
			   	mf3.transferTo(new File(safeFile3));
			   	}  catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
		}
		
		if(mf4.getOriginalFilename() != "") {
			String originalFileName4 = mf4.getOriginalFilename();
			System.out.println("파일이름 : " + originalFileName4);
			long fileSize4 = mf4.getSize();
			String originFileName4 = mf4.getOriginalFilename();
			String renameFileName4 = sdf.format(new Date())
     				+ "4" + originFileName4.substring(originFileName4.lastIndexOf("."));
     		
     		 String renamePath4 = renameFileName4;
     		 
     		System.out.println("변경 시간 이름 : " + renamePath4);
     		String safeFile4 = SAVE_PATH + "" + renamePath4;
     		String safeOFile4 = SAVE_PATH + "" + originFileName4;
     		
     		deleteFile1(movieAttachment2.get(2).getRenameFileName(), request);
     		int resultdelete = movService.deleteMovieManager(movieAttachment2.get(2).getRenameFileName()); // 삭제함
     		
     		HashMap<Object, Object> fullFileName4 = new HashMap<>();
	   		 fullFileName4.put("name1", 30);
	   		 fullFileName4.put("name2", DB_SAVE_PATH);
	   		 fullFileName4.put("name3", originalFileName4);
	   		 fullFileName4.put("name4", renamePath4);
	   		 fullFileName4.put("name5", movieNo);
	   		 
	   		result2 =  movService.insertFileMovieManager(fullFileName4);
	   		
	   		try { 
			   	mf4.transferTo(new File(safeFile4));
			   	}  catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
		}
		
		if(mf5.getOriginalFilename() != "") {
			String originalFileName5 = mf5.getOriginalFilename();
			System.out.println("파일이름 : " + originalFileName5);
			long fileSize5 = mf5.getSize();
			String originFileName5 = mf5.getOriginalFilename();
			String renameFileName5 = sdf.format(new Date())
     				+ "5" + originFileName5.substring(originFileName5.lastIndexOf("."));
     		
     		 String renamePath5 = renameFileName5;
     		 
     		System.out.println("변경 시간 이름 : " + renamePath5);
     		String safeFile5 = SAVE_PATH + "" + renamePath5;
     		String safeOFile5 = SAVE_PATH + "" + originFileName5;
     		
     		deleteFile1(movieAttachment3.get(0).getRenameFileName(), request);
     		int resultdelete = movService.deleteMovieManager(movieAttachment3.get(0).getRenameFileName()); // 삭제함
     		
     		HashMap<Object, Object> fullFileName5 = new HashMap<>();
	   		 fullFileName5.put("name1", 40);
	   		 fullFileName5.put("name2", DB_SAVE_PATH2);
	   		 fullFileName5.put("name3", originalFileName5);
	   		 fullFileName5.put("name4", renamePath5);
	   		 fullFileName5.put("name5", movieNo);
	   		 
	   		result2 =  movService.insertFileMovieManager(fullFileName5);
	   		
	   		try { 
			   	mf5.transferTo(new File(safeFile5));
			   	}  catch (IllegalStateException e) {
	                e.printStackTrace();
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
			}
		
		
   		
		}
		int resultOX = 3;
   		mv.addObject("resultOX",resultOX);
		return mv;
	}
	
	// 이미지 파일을 삭제하는 메소드
	private void deleteFile1(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\movie_image"; 
		
		File f = new File(savePath + "\\" + fileName);
		
		if(f.exists()) 
			f.delete();
	}
	
	// 비디오 파일을 삭제하는 메소드
		private void deleteFile2(String fileName, HttpServletRequest request) {
			String root = request.getSession().getServletContext().getRealPath("resources");
			String savePath = root + "\\images\\movie_vod"; 
			
			File f = new File(savePath + "\\" + fileName);
			
			if(f.exists()) 
				f.delete();
		}
		
		
		
		// 상영 추가에서 date를 String으로 바꿔주는 메소드
		public String result001(Date date) {
			
			DateFormat sdFormat = new SimpleDateFormat("yyyyMMddHHmmss");
			String today = sdFormat.format(date);
			return today;
		}
		
		// 상영 추가에서 String을 int로 바꿔주는 메소드
		public int result002(String date) {
			int result = Integer.parseInt(date);
			System.out.println("여기 result : " + result);
			return result;
		}
		
		
		@ResponseBody	
		@RequestMapping("MovieArrAjaxselect1.do")
		public int MovieArrAjaxselect1(
				HttpServletRequest request,
				@RequestBody Movie_Res arr){
			System.out.println("이쪽 아자스에 입장함");
			System.out.println(arr.getMovieName());
			System.out.println(arr.getStartTime());
			ArrayList<Movie> resultMovie = movService.movListName(arr.getMovieName());
			System.out.println("resultMovie : " + resultMovie);
			
			// 시작 시간을 int로 변환
			
			String movieStime1 = arr.getStartTime().substring(0,2);
			System.out.println("확인 : " + arr.getStartTime());
			String movieStime2 = arr.getStartTime().substring(2,4);
			int movieStime3 = Integer.parseInt(movieStime1)*100;
			int movieStime4 = Integer.parseInt(movieStime2);
			
			
			int start_time = Integer.parseInt(arr.getStartTime());
			System.out.println("movieStime : " +  start_time);
			String movieEtime = resultMovie.get(0).getMovieStime();
			// 끝 시간을 int로 변환
			int movieEtime1 = Integer.parseInt(movieEtime.split("분")[0]);
			System.out.println("movieEtime1 : " + movieEtime1);
			
			int h = movieEtime1 / 60 * 100; // 앞의자리
			int m = movieEtime1 % 60; // 뒤의자리
			int end_time = 0;
			end_time =  start_time + (h + m);
			if(end_time % 100 > 59) {
				end_time += 100; //만약에 계산한 분의 값이 59분을 넘어버리면 시간을 1시간 더 늘려야 하니 +100을 한 것이다.
				end_time -= 60; // 만약에 시간을 1시간 올렸으니 결국 뒤에 분은 마이너스 60을 해주면 계산이 된다.
			}
			String start_timeString = "";
			String end_timeString = "";
			
			// start time을 String으로 만듬
			if(start_time < 1000) {
				start_timeString = "0" + start_time;
			} else {
				start_timeString = start_time +"";
			}
			
			// end time을 String으로 만듬
			if(end_time < 1000) {
				end_timeString = "0" + end_time;
			} else {
				end_timeString = end_time + "";
			}
			
			String s1 = start_timeString.substring(0,2);
			String s2 = start_timeString.substring(2,4);
			
			String e1 = end_timeString.substring(0,2);
			String e2 = end_timeString.substring(2,4);
			
			String sumString1 = s1 + ":" + s2;
			String sumString2 = e1 + "" + e2;
			
			System.out.println("sumString1 : " + sumString1);
			System.out.println("sumString2 : " + sumString2);
			int result = Integer.parseInt(sumString2);
			
			return result;
		}
	

}
