package com.kh.kass;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.reservation.model.exception.ResException;
import com.kh.kass.reservation.model.service.ResService;
import com.kh.kass.snack.model.exception.SnackException;
import com.kh.kass.snack.model.service.SnackService;
import com.kh.kass.snack.model.vo.Snack;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ResService resService;

	@Autowired
	private SnackService sService;
	
	@RequestMapping("home.do")
	public ModelAndView movieSelectAll(ModelAndView mv, String searchText) {
		ArrayList<Movie> movieDateList = resService.movieDateList();
		ArrayList<Movie> movieFavorList = resService.movieFavorList();
		ArrayList<Movie> scoreList = resService.mScoreList();
		ArrayList<Movie> totalScoreList = resService.mTotalScoreList();
		ArrayList<Snack> snackList = sService.selectMList();
		ArrayList<Movie> movieNoList = resService.movieNList();
		
		ArrayList<Movie> avgScore = new ArrayList<>();
		double avg = 0;
		for(int i=0; i<scoreList.size(); i++) {
			if(scoreList.get(i).getMovieNo() == totalScoreList.get(i).getMovieNo()) {
				Movie m = new Movie();
				avg = Math.round((scoreList.get(i).getScore() / totalScoreList.get(i).getScore() * 100)*10)/10.0;
				m = new Movie(scoreList.get(i).getMovieNo(), avg);
				avgScore.add(m);
			}
		}
		
		for(int i=0; i<movieFavorList.size(); i++) {
			for(int j=0; j<avgScore.size(); j++) {
				if((movieFavorList.get(i).getMovieNo()) == (avgScore.get(j).getMovieNo())) {
					movieFavorList.get(i).setScore(avgScore.get(j).getScore());
				}
			}
		}
		
		for(int i=0; i<movieFavorList.size(); i++) {
			System.out.println("movieFavorList.get(i).getScore() : " + movieFavorList.get(i).getScore());			
		}
		
		Collections.sort(movieFavorList);
		ArrayList<Movie> newFavorList = new ArrayList<>();
		if(movieFavorList.isEmpty()) {
			newFavorList.add(movieFavorList.get(0));
			newFavorList.add(movieFavorList.get(1));
			newFavorList.add(movieFavorList.get(2));			
		}
		
		for (Snack s : snackList) {
			System.out.println("스낵 리스트 : " + s);
		}
		
		if (movieDateList != null || movieFavorList != null) {
			mv.addObject("movieDateList", movieDateList);
			mv.addObject("movieFavorList", movieFavorList);
			mv.addObject("snackList", snackList);
			mv.addObject("movieNoList", movieNoList);
			mv.setViewName("home");
		} else {
			throw new ResException("영화 리스트 불러오기를 실패했습니다.");
		}
		
		return mv;
	}
	
	
}
