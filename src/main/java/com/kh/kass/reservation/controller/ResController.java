package com.kh.kass.reservation.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;

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
	public ModelAndView goMovieInfo(ModelAndView mv, @RequestParam("movieNo") int movieNum,
			@RequestParam(value="page", required=false) Integer page) {
		int currentPage = page != null ? page : 1;
		ArrayList<Movie> movInfo = resService.movieInfo(movieNum);

		ArrayList<Review> reList = resService.reviewList(movieNum);
		
		int reviewUp = 0;
		int reviewDown = 0;
		
		if(reList.size() >= 1) {
			int reListSize = reList.size();
			
			for(int i=0; i<reListSize; i++) {
				if(reList.get(i).getRScore().equals("G")) {
					reviewUp++;
				}else if(reList.get(i).getRScore().equals("B")){
					reviewDown++;
				}
			}
			
		}
		
		if (movInfo != null) {
			mv.addObject("movInfo", movInfo);
			mv.addObject("reviewUp", reviewUp);
			mv.addObject("reviewDown", reviewDown);
			mv.addObject("reList", reList);
			mv.setViewName("reservation/movieInfo");
		} else {
			throw new ResException("영화 예약리스트 불러오기를 실패했습니다.");
		}
		
		return mv;
	}
	
	@RequestMapping("resSeat.do")
	public ModelAndView goResSeat(ModelAndView mv, @RequestParam("placeValue") int placeValue) {
		
		
		
		Reservation seatList = resService.resSeatSelect(placeValue);
		
		Date today = seatList.getResDate();
		DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd-E");
		String[] todayList = dateformat.format(today).split("-");
		String resDate = todayList[0] + "-" + todayList[1] + "-" + todayList[2] + "(" + todayList[3] + ")";
		String bottomDate = todayList[0] + "." + todayList[1] + "." + todayList[2] + "(" + todayList[3] + "요일)";
		
		String[] seat = seatList.getRoomChair().split(",");
		String[] seatInfo = seatList.getResInfo().split(",");
		int seatLength = seatList.getResInfo().split(",").length;
		
		int num1 = 0; // 남은자리
		int num2 = 0; // 총자리
		
		for(int i=0; i<seatLength ; i++) {
			if(seat[i].equals("0")) {
				num2++;
			}
			if(seatInfo[i].equals("0")) {
				num1++;
			}
		}
		
		String[] alpha = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"};
		
		if (seatList != null) {
			mv.addObject("resDate",resDate);
			mv.addObject("bottomDate",bottomDate);
			mv.addObject("alpha",alpha);
			mv.addObject("num1",num1);
			mv.addObject("num2",num2);
			mv.addObject("seatList", seatList);
			mv.addObject("seatInfo", seatInfo);
			
			mv.setViewName("reservation/resSeat");
		} else {
			throw new ResException("영화 예약리스트 불러오기를 실패했습니다.");
		}
		
		return mv;
	}
	
	@RequestMapping("goPayPage.do")
	public ModelAndView goPayPage(ModelAndView mv,
									@RequestParam("seat_array") String placeValue,
									@RequestParam("index_array") String index_array,
									@RequestParam("resNo") int resNo,
									@RequestParam("people") String people,
									@RequestParam("price") String price,
									@RequestParam("val1") int val1,
									@RequestParam("val2") int val2
									) {
		Reservation resInfo = resService.resSeatSelect(resNo);
		String[] sPrice = price.split("원");
		
		Date today = resInfo.getResDate();
		DateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd-E");
		String[] todayList = dateformat.format(today).split("-");
		String resDate = todayList[0] + "-" + todayList[1] + "-" + todayList[2] + "(" + todayList[3] + ")";
		
		if (resInfo != null) {
			mv.addObject("resInfo", resInfo);
			mv.addObject("placeValue", placeValue);
			mv.addObject("index_array", index_array);
			mv.addObject("resDate", resDate);
			mv.addObject("people", people);
			mv.addObject("price", sPrice[0]);
			mv.addObject("val1", val1);
			mv.addObject("val2", val2);
			mv.setViewName("reservation/resPayment");
		} else {
			throw new ResException("영화 결제이동을 실패했습니다.");
		}
		return mv;
	}
	
	@RequestMapping("moneyPay.do")
	public ModelAndView moneyPay(ModelAndView mv,
									@RequestParam("userNo") int userNo,
									@RequestParam("resNo") int resNo,
									@RequestParam("index_array") String index_array,
									@RequestParam("placeValue") String placeValue,
									@RequestParam("people1") int people1,
									@RequestParam("people2") int people2,
									@RequestParam("price") int price,
									@RequestParam("time") String time,
									@RequestParam("people") String people
									) {
		Reservation resInfo = resService.resSeatSelect(resNo);
		System.out.println("[SEQ]UR_NO : " + "1");
		System.out.println("[DB]USER_NO : " + userNo);
		System.out.println("[DB]RES_NO : " + resNo);
		System.out.println("[SYS]UR_DATE : " + "SYSDATE");
		System.out.println("[DB]UR_ADDRESS : " + index_array);
		System.out.println("time : " + time);
		System.out.println("people : " + people);
		System.out.println("[DB]UR_RES : " + placeValue);
		System.out.println("[DB]UR_PEOPLE : " + people1);
		System.out.println("[DB]UR_PEOPLE2 : " + people2);
		System.out.println("[DB]UR_PRICE : " + price);
		
		Reservation res = new Reservation(userNo,resNo,index_array,placeValue,people1,people2,price);
		
		System.out.println("원래 자리 : " + resInfo.getResInfo());
		// 자리 업데이트
		String[] seatSplit = resInfo.getResInfo().split(",");
		String[] resSeat = index_array.split(",");
		System.out.println("바뀔 자리 : " + Arrays.toString(resSeat));
		for(int i=0; i<resSeat.length; i++) {
			int num = Integer.parseInt(resSeat[i]);
			seatSplit[num] = "1";
		}
		String seat = String.join(",", seatSplit);
		System.out.println("바뀐 자리 : " + seat);

		Reservation seatUpdate = new Reservation(resNo, seat);
		int upResult = resService.updateResInfo(seatUpdate);
		
		if(upResult > 0) {
			// 에약정보 등록
			// 결제에 등록
			int update = resService.updateRes(res);
			
			if(update > 1) {
				mv.addObject("resInfo", resInfo);
				mv.addObject("time", time);
				mv.addObject("placeValue", placeValue);
				mv.addObject("price", price);
				mv.addObject("people", people);
				
				mv.setViewName("reservation/resPayClear");
			}else {
				throw new ResException("영화 결제를 실패했습니다.");
			}
			
		}else {
			throw new ResException("영화 예약 정보 등록을 실패했습니다.");
		}
		
		return mv;
	}
	
}
	
