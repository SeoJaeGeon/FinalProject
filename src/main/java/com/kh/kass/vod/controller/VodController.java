package com.kh.kass.vod.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.kass.common.PageInfo;
import com.kh.kass.common.PaginationA;
import com.kh.kass.common.PaginationV;
import com.kh.kass.movie.model.vo.Movie;
import com.kh.kass.vod.model.exception.VodException;
import com.kh.kass.vod.model.service.VodService;
import com.kh.kass.vod.model.vo.VodOrder;
import com.kh.kass.vod.model.vo.VodPay;
import com.kh.kass.vod.model.vo.VodReview;
import com.kh.kass.vod.model.vo.VodWish;




@Controller
public class VodController {
	@Autowired
	private VodService vService;

	
	
	@RequestMapping("vlist.do")
	public ModelAndView vlist(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page, 
			@RequestParam(value = "testa", required = false) String testa) {
		
		
		int category = Integer.parseInt(testa);
		
		int currentPage = page != null ? page : 1;
		
		int listCount = vService.selectListCount(category);
		
		PageInfo pi = PaginationV.getPageInfo(currentPage, listCount);
		
		
		ArrayList<Movie> list = vService.selectList(pi ,category);
		
		
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.addObject("cate" , category);
			mv.setViewName("vod/list");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}
	
	
	
	
	@RequestMapping("vsearch.do")
	public ModelAndView vsearch(ModelAndView mv, String search ) {
		
		
		ArrayList<Movie> list = vService.searchlist(search);
		
		int pp = 1;
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pp", pp);
			mv.setViewName("vod/list");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}
	
	
	
	
	
	@RequestMapping("vdetail.do")
	public ModelAndView vdetail(ModelAndView mv , @RequestParam("movieNo") int movieNo) {
		
		System.out.println(movieNo);
		Movie m = vService.selectMovie(movieNo);
		
		//VodReview vr = vService.selectv
		
		
		if(m != null) {
			mv.addObject("m", m);
			mv.setViewName("vod/detail");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}
	
	// 위시리스트 등록 컨트롤 
	@RequestMapping("vwish.do")
	public ModelAndView vwish(ModelAndView mv ,VodWish vw ) {
		
		Movie result = vService.selectwishVod(vw);
		
		if(result != null) {
			mv.addObject("msg", "이미 등록 된 vod입니다 ");
			mv.setViewName("vod/test");
		
		}else {
			int result2 = vService.vwish(vw);
			
			mv.addObject("msg", "vod 위시 저장 완료");
			mv.setViewName("vod/test");
			
		}
	
		return mv;
	}
	
	
	// 내 위시리스트 보는 컨트롤 @@@@아직 안했어@@@@@@@@@@@@@@@@@@@@@@
	@RequestMapping("mywish.do")
	public ModelAndView mywish(ModelAndView mv, int userNo ,  @RequestParam(value = "page", required = false) Integer page) {
		
		int currentPage = page != null ? page : 1;
		
		// 1. 전체 게시글 개수 리턴 받기
		int listCount = vService.selectListCount1(userNo);
		
		
		PageInfo pi = PaginationA.getPageInfo(currentPage, listCount);
		
		
		ArrayList<Movie> list = vService.wishselectList(pi , userNo);

		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("vod/vodwishList");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
			
	}
	
	
	
	
	
	
	// 구매하기로  하나만 구매할때 -----
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
	
	// 단일 구매 완료 -----
	@RequestMapping("vpay.do")
	public ModelAndView vpay(ModelAndView mv ,String rufwp , int payPrice
			, int userNo , int movieNo) {
		
		VodPay vp = new VodPay(payPrice , rufwp);
		
		int result = vService.insertpay(vp);
		//-----------------------됨 
		
		
		
		
		if(result >0) {
			int payNo = vService.selectpay();	
			
			VodOrder vo = new VodOrder(userNo , movieNo , payNo);
			int result2 = vService.insertorder(vo);
			if(result2 >0) {
				mv.setViewName("vod/test");
			}
			
			
		}else {
			throw new VodException("결제 실패 ");
		}
		
	
		return mv;
		
	}
	
	
	
	
	
	
	
	
	@RequestMapping("vpaypay.do")
	public ModelAndView vpaypay(ModelAndView mv ,String rufwp , int payPrice,
			 int userNo) {
		int result2=0;
		ArrayList<Movie> list = vService.cartselectList(userNo);
		
		
		
		VodPay vp = new VodPay(payPrice , rufwp);
		
		int result = vService.insertpay(vp);
		
		if(result >0) {
			int payNo = vService.selectpay();	
			
			for(int i= 0;  i< list.size(); i++) {
				
			VodOrder vo = new VodOrder(userNo , list.get(i).getMovieNo() , payNo);
			
			result2 = vService.insertorder(vo);
			
			}
			
			if(result2 >0) {
				mv.setViewName("vod/test");
			}
			
		}else {
			throw new VodException("결제 실패 ");
		}
		
		
	
		return mv;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 장바구니 -> 결제창 가기 
	@RequestMapping("vpaylist.do")
	public ModelAndView vpaylist(ModelAndView mv ,int userNo) {
		
		
		ArrayList<Movie> list = vService.cartselectList(userNo);
		
		
		int sum = 0;
		for(int i= 0;  i< list.size(); i++) {
			sum += list.get(i).getMoviePrice();
		}
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("sum", sum);
			mv.setViewName("vod/last2");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}
	
	
	
	
	
	
	

	
	
	// 카트---------------장바구니 등록하는 거---------------
	@RequestMapping("vcart.do")
	public ModelAndView vcart(ModelAndView mv ,VodWish vw ) {
		
		Movie result = vService.selectcartVod(vw);
		
		if(result != null) {
			mv.addObject("msg", "이미 등록 된 vod입니다 ");
			mv.setViewName("vod/test");
		
		}else {
			int result2 = vService.vcart(vw);
			
			mv.addObject("msg", "vod 장바구니 저장 완료");
			mv.setViewName("vod/test");
			
		}
	
		return mv;
	}
	
	// 내 장바구니 보기 
	@RequestMapping("mycart.do")
	public ModelAndView mycart(ModelAndView mv, int userNo) {
		ArrayList<Movie> list = vService.cartselectList(userNo);
		int sum = 0;
		for(int i= 0;  i< list.size(); i++) {
			sum += list.get(i).getMoviePrice();
		}
		
		if(list != null) {
			
			mv.addObject("list", list);
			mv.addObject("sum", sum);
			mv.setViewName("vod/cart");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
		
		
	}
	
	
	
	// 장바구니 삭제 @@@@@@@@@@@@@@2삭제@@@@@@@@@@@@@@@@@@@@@삭제@@@@@@@@@@@@@@2
	@RequestMapping("cdelete.do")
	public ModelAndView vdetail(ModelAndView mv , String[] movieNo ,String aa) {
			
		System.out.println(movieNo[0]);
		System.out.println(movieNo[1]);
		int[] arr = new int[movieNo.length];
		
		
		for(int i = 0; i < arr.length; i++) {
			arr[i] = Integer.valueOf(movieNo[i]);
			
		int result = vService.cartdelete(arr[i]);
			
		}
		
		
		
		//----------------------------------------------삭제는 잘됨 
		
		int userNo= Integer.parseInt(aa);
		
		
		
		ArrayList<Movie> list = vService.cartselectList(userNo);
		
		int sum = 0;
		for(int i= 0;  i< list.size(); i++) {
			sum += list.get(i).getMoviePrice();
		}
		
		
			mv.addObject("list", list);
			mv.addObject("sum", sum);
			mv.setViewName("vod/cart");
			
			
			
		return mv;
		
	}
	
	
	
	
	
	

	@RequestMapping("insertvod.do")
	public ModelAndView insertvod(ModelAndView mv, String search  ) {
		
		
		ArrayList<Movie> list = vService.searchlist1(search);
		
		
		
		if(list != null) {
			mv.addObject("search" , search);
			mv.addObject("list", list);
			mv.setViewName("vod/insertvod");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}
	
	
	@RequestMapping("vodvod.do")
	public ModelAndView vodvod(ModelAndView mv, int movieNo  ) {
		
		
		int result = vService.vodvod(movieNo);
		
		
		
		if(result >0 ) {
			
			mv.addObject("msg", "vod등록완료");
			mv.setViewName("vod/insertvod");
		} else {
			throw new VodException("게시글 목록 조회에 실패하였습니다");
		}
		return mv;
		
	}
	
	
	
	@RequestMapping("myinfo.do")
	public String myInfoView() {
		return "vod/insertvod";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
