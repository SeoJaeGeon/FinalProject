package com.kh.kass.reservation.controller;

import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.kass.common.PageInfo;
import com.kh.kass.common.PaginationS;
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
	public ModelAndView movieSelectAll(ModelAndView mv, String searchText) {
		ArrayList<Movie> movListON = resService.movListON();
		ArrayList<Movie> movListWait = resService.movListWait();
		ArrayList<Movie> movListOff = resService.movListOff();
		ArrayList<Movie> movListFavor = resService.movListFavor();
		ArrayList<Movie> scoreList = resService.scoreList();
		ArrayList<Movie> totalScoreList = resService.totalScoreList();
		
		System.out.println("movListFavor : " + movListFavor);
		System.out.println("scoreList : " + scoreList);
		System.out.println("totalScoreList : " + totalScoreList);
		
		
		ArrayList<Movie> avgScore = new ArrayList<>();
		double avg = 0;
		for(int i=0; i<scoreList.size(); i++) {
			if(scoreList.get(i).getMovieNo() == totalScoreList.get(i).getMovieNo()) {
				Movie m = new Movie();
				avg = Math.round((scoreList.get(i).getScore() / totalScoreList.get(i).getScore() * 100)*10)/10.0;
				System.out.println("scoreList : " + scoreList);
				m = new Movie(scoreList.get(i).getMovieNo(), avg);
				avgScore.add(m);
			}
		}
		
		for(int i=0; i<movListFavor.size(); i++) {
			for(int j=0; j<avgScore.size(); j++) {
				if((movListFavor.get(i).getMovieNo()) == (avgScore.get(j).getMovieNo())) {
					movListFavor.get(i).setScore(avgScore.get(j).getScore());
				}
				if((movListON.get(i).getMovieNo()) == (avgScore.get(j).getMovieNo())) {
					movListON.get(i).setScore(avgScore.get(j).getScore());
				}
			}
		}
		
		Collections.sort(movListFavor);
		
		double totalRes = 0;
		for(int i=0; i<movListON.size(); i++) {
			totalRes += movListON.get(i).getResPeople();
		}
		
		for(int i=0; i<movListON.size(); i++) {
			movListON.get(i).setResPeople(Math.round((movListON.get(i).getResPeople()/totalRes*100)*10)/10.0);
		}
		
		for(int i=0; i<movListFavor.size(); i++) {
			for(int j=0; j<movListON.size(); j++) {
				if(movListON.get(j).getMovieNo() == movListFavor.get(i).getMovieNo()) {
					movListFavor.get(i).setResPeople(movListON.get(j).getResPeople());
				}
			}
		}
		
		ArrayList<Movie> searchList = new ArrayList<>();
		if(searchText != null) {
			searchList = resService.searchList(searchText);
		}
		
		if (movListON != null || movListWait != null || movListOff != null || searchList != null) {
			mv.addObject("movListON", movListON);
			mv.addObject("movListWait", movListWait);
			mv.addObject("movListOff", movListOff);
			mv.addObject("movListFavor", movListFavor);
			mv.addObject("searchList", searchList);
			mv.addObject("searchText", searchText);
			mv.addObject("searchList", searchList);
			
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
	public ModelAndView goMovieInfo(ModelAndView mv, @RequestParam(value="movieNo", required=false) Integer movieNum,
			@RequestParam(value="page", required=false) Integer page) {
		int currentPage = page != null ? page : 1;
		ArrayList<Movie> movInfo = resService.movieInfo(movieNum);
		ArrayList<Review> reList = resService.reviewList(movieNum);
		int reviewUp = 0;
		int reviewDown = 0;
		int listCount = reList.size();
		PageInfo pi = PaginationS.getPageInfo(currentPage, listCount);
		
		if(reList.size() >= 1) {
			for(int i=0; i<listCount; i++) {
				if(reList.get(i).getReScore().equals("G")) {
					reviewUp++;
				}else if(reList.get(i).getReScore().equals("B")){
					reviewDown++;
				}
			}
		}
		
		ArrayList<Review> rList = resService.rSelectList(pi, movieNum);
		Calendar time = Calendar.getInstance();
		Date movieDate = movInfo.get(0).getMovieRdate();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String format_time1 = dateFormat.format(time.getTime());
		String format_time2 = dateFormat.format(movieDate);
		java.util.Date today = null;
		java.util.Date mDate = null;
		
		try {
			today = dateFormat.parse(format_time1);
			mDate = dateFormat.parse(format_time2);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		int compare = today.compareTo(mDate);
		boolean movieStatus = false;
		if(compare >= 0) {
			movieStatus= false;
		}else if(compare <0) {
			movieStatus = true;
		}else {
			movieStatus = true;
		}
		
		
		
		if (movInfo != null) {
			mv.addObject("movInfo", movInfo);
			mv.addObject("reviewUp", reviewUp);
			mv.addObject("reviewDown", reviewDown);
			mv.addObject("pi", pi);
			mv.addObject("reviewList", rList);
			mv.addObject("movieStatus", movieStatus);
			mv.setViewName("reservation/movieInfo");
		} else {
			throw new ResException("영화 정보 불러오기를 실패했습니다.");
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
			throw new ResException("영화 예약를 실패했습니다.");
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
									@RequestParam("people") String people,
									@RequestParam("radioVal") String radioVal
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
		System.out.println("radioVal : " + radioVal);
		
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
			int update = resService.updateRes(res, radioVal);
			
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
	
	@RequestMapping(value = "searchMovie.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String searchMovie(String searchText) throws ParseException {
		
		System.out.println("들어온 값 : " + searchText);
		
		ArrayList<Movie> searchList = resService.searchMovie(searchText);
		System.out.println(searchList);
		
		Gson gson = new GsonBuilder().setDateFormat("YYYY-MM-dd").create();
		
		return gson.toJson(searchList);
	}
	
	@RequestMapping(value = "movieCard.do", produces = "application/text; charset=UTF-8")
	@ResponseBody
	public String movieCardPay(int userNo, int resNo, String time, String people, String index_array, String placeValue, int people1, 
			int people2, int price) throws ParseException {
		
		Gson gson = new GsonBuilder().setDateFormat("YYYY-MM-dd").create();
		
		return "success";
	}
	
	@RequestMapping("placeList.do")
	public ModelAndView placeAllView(ModelAndView mv) {
		
		ArrayList<Reservation> placeList = resService.placeList();
		System.out.println("pladeList : " + placeList);
		
		if (placeList != null) {
			mv.addObject("placeList", placeList);
			mv.setViewName("reservation/moviePlaceInfo");
		} else {
			throw new ResException("극장 불러오기를 실패했습니다.");
		}
		return mv;
	}
}
	
