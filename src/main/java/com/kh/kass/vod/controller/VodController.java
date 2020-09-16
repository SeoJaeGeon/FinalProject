package com.kh.kass.vod.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.kass.common.PageInfo;
import com.kh.kass.common.PaginationV;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.vod.model.exception.VodException;
import com.kh.kass.vod.model.service.VodService;
import com.kh.kass.vod.model.vo.VodWish;



@Controller
public class VodController {
	@Autowired
	private VodService vService;

	
	
	/*@RequestMapping("vlist.do")
	public ModelAndView vlist(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page) {
		
		int currentPage = page != null ? page : 1;
		
		int listCount = vService.selectListCount();
		PageInfo pi = PaginationV.getPageInfo(currentPage, listCount);
		ArrayList<Movie> list = vService.selectList(pi);
		System.out.println(listCount);
		System.out.println(pi);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("vod/list");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}*/
	
	@RequestMapping("vdetail.do")
	public ModelAndView vdetail(ModelAndView mv , @RequestParam("movieNo") int movieNo) {
		
		System.out.println(movieNo);
		Movie m = vService.selectMovie(movieNo);
		
		if(m != null) {
			mv.addObject("m", m);
			mv.setViewName("vod/detail");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}
	
	@RequestMapping("vwish.do")
	public String vwish(VodWish vw) {
		
		int result = vService.vwish(vw);
		
		return "vod/test";
	}
	
	
	/*@RequestMapping("mycart.do")
	public ModelAndView mycart(ModelAndView mv, int userNo) {
		ArrayList<Movie> list = vService.selectList1(userNo);

		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("vod/list");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
		
		
	}
	*/
	
	
	@RequestMapping("vbuy.do")
	public ModelAndView vbuy(ModelAndView mv , int movieNo) {
		
		System.out.println(movieNo);
		Movie m = vService.selectMovie(movieNo);
		
		if(m != null) {
			mv.addObject("m", m);
			mv.setViewName("vod/last");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}
	
	/*
	@RequestMapping("vpay.do")
	public ModelAndView vpay(ModelAndView mv ,int movieNo  , String rufwp) {
		
		System.out.println(movieNo);
		Movie m = vService.selectMovie(movieNo);
		
		if(m != null) {
			mv.addObject("m", m);
			mv.setViewName("vod/test");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}*/

	

}
