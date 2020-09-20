package com.kh.kass.prodOrder.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.kass.member.model.vo.Member;
import com.kh.kass.payment.model.vo.Payment;
import com.kh.kass.prodOrder.model.service.ProdOrderService;
import com.kh.kass.prodOrder.model.vo.ProdOrder;
import com.kh.kass.prodOrder.model.vo.SnackCode;
import com.kh.kass.reservation.model.exception.ResException;
import com.kh.kass.snack.model.vo.Snack;

@Controller
public class prodOrderController {
	@Autowired
	private ProdOrderService proService;

	@RequestMapping("goSnackBuy.do")
	public ModelAndView SnackSelectAll(ModelAndView mv, String snackNo, String proCount, HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		System.out.println(loginUser);
		int userNo = loginUser.getUserNo();
		Snack sn = proService.selectOne(snackNo);
		int price = sn.getSnackPrice() * Integer.parseInt(proCount);

		System.out.println("snackNo : " + snackNo);
		System.out.println("price : " + price);
		
		System.out.println("sn 확인용 : " + sn);
		if (snackNo != null) {
			mv.addObject("sn", sn);
			mv.addObject("price", price);
			mv.addObject("proCount", proCount);

			mv.setViewName("cart/proPayment");
		} else {
			throw new ResException("스낵 정보 불러오기를 실패했습니다.");
		}

		return mv;
	}
	
	@RequestMapping("goSnackcart.do")
	public ModelAndView SnackCSelectAll(ModelAndView mv, String snackNo, String proCount, HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		System.out.println(loginUser);
		int userNo = loginUser.getUserNo();
		Snack sn = proService.selectOne(snackNo);
		int price = sn.getSnackPrice() * Integer.parseInt(proCount);

		System.out.println("snackNo : " + snackNo);
		System.out.println("price : " + price);
		
		System.out.println("sn 확인용 : " + sn);
		if (snackNo != null) {
			mv.addObject("sn", sn);
			mv.addObject("price", price);
			mv.addObject("proCount", proCount);

			mv.setViewName("cart/Scart");
		} else {
			throw new ResException("스낵 정보 불러오기를 실패했습니다.");
		}

		return mv;
	}
	

	@RequestMapping("proMoneyPay.do") //String radioChoise, 
	public ModelAndView snackPayment(ModelAndView mv, int snackNo, int proCount, int price, RedirectAttributes rd,
			HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		System.out.println(loginUser);
	
		System.out.println("snackPayment에 들어옴 확인");
		
		System.out.println("snackNo : " + snackNo);
		System.out.println("proCount : " + proCount);
		System.out.println("price : " + price);
		
		int nansu = (int)(Math.random()*100000)+100000;
		int nansu2 = (int)(Math.random()*10000000)+10000000;
		System.out.println(nansu);
		
		String nansuString = nansu + "";
		
		Date date = new Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd");
		String to = transFormat.format(date);
		
		to = to + nansuString;
		System.out.println("이거 난수 : " + to);
		
		Payment pm = new Payment();
		
		pm.setPayPrice(price);
		pm.setPaySelect("무통장");
		pm.setOrderNum(to);
		
		int result1 = proService.insertPro(pm);
		System.out.println("pro 끝남");
		Payment payselect = proService.selectPro(to);
		System.out.println("payselect : " + payselect);
		
		ProdOrder prod = new ProdOrder();
		System.out.println("유저 아이디 : " + loginUser.getUserNo());
		prod.setUserId(loginUser.getUserNo());
		prod.setPayNo(payselect.getPayNo());
		prod.setSnackNo(snackNo);
		prod.setOrderCount(proCount);
		
		int result2 = proService.insertPROD_ORDER(prod);
		System.out.println("PROD 인설트 끝남");
		
		int pordselect = proService.selectORDER(loginUser.getUserNo());
		System.out.println("ORDER select 끝남 : " + pordselect);
		
		SnackCode snackCode = new SnackCode();
		snackCode.setProdCode(nansu2);
		snackCode.setOrderNo(pordselect);
		int result3 = proService.insertsnackcode(snackCode);
		
		rd.addFlashAttribute("msg", "결제 완료되었습니다.");
		mv.setViewName("cart/OrderSuccess");
		return mv;
	}
	
	@RequestMapping("proKaPay.do") //String radioChoise, 
	public ModelAndView snackKPayment(ModelAndView mv, int snackNo, int proCount, int price, RedirectAttributes rd,
			HttpSession session, HttpServletRequest request) {
		Member loginUser = (Member) session.getAttribute("loginUser");
		System.out.println(loginUser);
	
		System.out.println("snackPayment에 들어옴 확인");
		
		System.out.println("snackNo : " + snackNo);
		System.out.println("proCount : " + proCount);
		System.out.println("price : " + price);
		
		int nansu = (int)(Math.random()*100000)+100000;
		int nansu2 = (int)(Math.random()*10000000)+10000000;
		System.out.println(nansu);
		
		String nansuString = nansu + "";
		
		Date date = new Date();
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyyMMdd");
		String to = transFormat.format(date);
		
		to = to + nansuString;
		System.out.println("이거 난수 : " + to);
		
		Payment pm = new Payment();
		
		pm.setPayPrice(price);
		pm.setPaySelect("카드");
		pm.setOrderNum(to);
		
		int result1 = proService.insertPro(pm);
		System.out.println("pro 끝남");
		Payment payselect = proService.selectPro(to);
		System.out.println("payselect : " + payselect);
		
		ProdOrder prod = new ProdOrder();
		System.out.println("유저 아이디 : " + loginUser.getUserNo());
		prod.setUserId(loginUser.getUserNo());
		prod.setPayNo(payselect.getPayNo());
		prod.setSnackNo(snackNo);
		prod.setOrderCount(proCount);
		
		int result2 = proService.insertPROD_ORDER(prod);
		System.out.println("PROD 인설트 끝남");
		
		int pordselect = proService.selectORDER(loginUser.getUserNo());
		System.out.println("ORDER select 끝남 : " + pordselect);
		
		SnackCode snackCode = new SnackCode();
		snackCode.setProdCode(nansu2);
		snackCode.setOrderNo(pordselect);
		int result3 = proService.insertsnackcode(snackCode);
		
		rd.addFlashAttribute("msg", "결제 완료되었습니다.");
		mv.setViewName("cart/OrderSuccess");
		return mv;
	}
	
	

}
