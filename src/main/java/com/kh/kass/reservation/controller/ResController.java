package com.kh.kass.reservation.controller;

import java.sql.Date;
import java.text.ParseException;
import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.reservation.model.exception.ResException;
import com.kh.kass.reservation.model.service.ResService;
import com.kh.kass.reservation.model.vo.Reservation;
import com.kh.kass.review.model.vo.Review;

@SessionAttributes({ "loginUser", "msg" })
@Controller
public class ResController {

	@Autowired
	private ResService resService;

	@RequestMapping("movieList.do")
	public ModelAndView movieSelectAll(ModelAndView mv) {
		ArrayList<Movie> movListON = resService.movListON();
		ArrayList<Movie> movListWait = resService.movListWait();
		ArrayList<Movie> movListOff = resService.movListOff();
		
		/*
		for (Movie movie : movListON) {
			System.out.println("(개봉)영화 값 : "+movie.toString());
		}
		
		for (Movie movie : movListWait) {
			System.out.println("(미개봉)영화 값 : "+movie.toString());
		}
		
		for (Movie movie : movListOff) {
			System.out.println("(X)영화 값 : "+movie.toString());
		}
		*/
		if (movListON != null || movListWait != null || movListOff != null) {
			mv.addObject("movListON", movListON);
			mv.addObject("movListWait", movListWait);
			mv.addObject("movListOff", movListOff);
			
			mv.setViewName("reservation/movieList");
		} else {
			throw new ResException("영화 리스트 불러오기를 실패했습니다.");
		}
		
		return mv;
	}

	@RequestMapping("resList.do")
	public ModelAndView resSelectAll(ModelAndView mv) {
		
		ArrayList<Reservation> resList = resService.resSelectAll();
		ArrayList<Movie> movList = resService.movSelectAll();
		ArrayList<Reservation> ocList = resService.aSelectAll();
		
		if (resList != null) {
			mv.addObject("resList", resList);
			mv.addObject("movList", movList);
			mv.addObject("ocList", ocList);
			mv.setViewName("reservation/resList");
		} else {
			throw new ResException("영화 예약리스트 불러오기를 실패했습니다.");
		}
		return mv;
	}
	
	
	@RequestMapping(value = "placeSelect.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String areaClick(int num) {
		
		ArrayList<Reservation> placeList = resService.placeSelect(num);
		
		Gson gson = new Gson();
		
		return gson.toJson(placeList);
	}
	
	@RequestMapping(value = "playMovieSel.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String playMovieSelect(int title,int area,int cinema,String time) throws ParseException {
		
		/*System.out.println("들어온 값 : " + title+ ", " + area+ ", " + cinema + ", " + time);*/
		
		Date date = null;
		
		if(!time.equals("")) {
			String[] arr = time.split("\\.");
			String year = arr[0];
			String month = arr[1];
			String day = arr[2];
			String mergeStr = year+"-"+month+"-"+day;
			date = java.sql.Date.valueOf(mergeStr);
		}
		
		Movie mov = new Movie(title);
		
		Reservation res = new Reservation(mov, area, cinema, date);
		
		ArrayList<Reservation> playList = resService.playMovieSelect(res);
		
		Gson gson = new Gson();
		
		return gson.toJson(playList);
	}
	
	@RequestMapping("movieInfo.do")
	public ModelAndView goMovieInfo(ModelAndView mv, @RequestParam("movieNo") int movieNum) {
		
		ArrayList<Movie> movInfo = resService.movieInfo(movieNum);
		/*
		ArrayList<Movie> reList = resService.reviewList(movieNum);
		if(reList.get(0).getReview().size() >= 1) {
			int reListSize = reList.get(0).getReview().size();
			int reviewUp = 0;
			int reviewDown = 0;
			
			for(int i=0; i<reListSize; i++) {
				if(reList.get(0).getReview().get(i).getRScore().equals("G")) {
					reviewUp++;
				}else if(reList.get(0).getReview().get(i).getRScore().equals("B")){
					reviewDown++;
				}
			}
			
			System.out.println("리뷰 갯수 : " + reList.get(0).getReview().size());
			System.out.println("종아요 갯수 : " + reviewUp);
			System.out.println("싫어요 갯수 : " + reviewDown);
		}
		*/
		
		System.out.println("사진 갯수 : " + movInfo.size());
		
		
		if (movInfo != null) {
			mv.addObject("movInfo", movInfo);
			mv.setViewName("reservation/movieInfo");
		} else {
			throw new ResException("영화 예약리스트 불러오기를 실패했습니다.");
		}
		
		return mv;
	}
}
