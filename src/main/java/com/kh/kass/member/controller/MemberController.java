package com.kh.kass.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.kass.member.model.exception.MemberException;
import com.kh.kass.member.model.service.MemberService;
import com.kh.kass.member.model.vo.Member;

@SessionAttributes({"loginUser","msg"})
@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	
	// 1. 회원가입
	// 회원가입 뷰로
	@RequestMapping("minsertView.do")
	public String mInsertView() {
		return "member/insertMember";
	}
	
	// 회원가입
	@RequestMapping("minsert.do")
	public String insertMember(Member m, RedirectAttributes rd,
			@RequestParam("zipCode") String zipCode,
			@RequestParam("address1") String address1,
			@RequestParam("address2") String address2) {
		System.out.println("MemberController m : " + m);
		m.setUserAddr(zipCode + "," + address1 + "," + address2);
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			rd.addFlashAttribute("msg", "회원가입이 완료되었습니다. 로그인 해주세요.");
			return "redirect:home.do";
		} else {
			throw new MemberException("회원가입에 실패하였습니다.");
		}	
	}
	
	// 아이디 중복체크
	@RequestMapping("idDupCheck.do")
	public ModelAndView idDuplicateCheck(String userId, ModelAndView mv) {
		boolean isUsable = mService.checkIdDup(userId) == 0 ? true : false;
		System.out.println("result : "+mService.checkIdDup(userId));
		System.out.println("isUsable:"+isUsable);
		Map map = new HashMap();
		map.put("isUsable", isUsable);
		mv.addAllObjects(map);
		
		mv.setViewName("jsonView");
		
		return mv;
	}

	// 이메일 인증
	@RequestMapping("sendEmail.do")
	public int sendEmail(HttpServletRequest request, String userEmail) {
		HttpSession session = request.getSession();
		mService.mailSend(session, userEmail);
		
		return 123;
	}
	

	// 2. 로그인
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public String memberLogin(Member m, Model model) {
		Member loginUser = mService.loginMember(m);
		
		if(loginUser != null) {
			model.addAttribute("loginUser", loginUser);
		} else {
			throw new MemberException("로그인에 실패했습니다.");
		}
		return "redirect:home.do";
	}
	
	
	// 3. 로그아웃
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {
		status.setComplete();
		
		return "redirect:home.do";
	}
	
	// 4. 마이페이지로 이동
	@RequestMapping("myPage.do")
	public String myPage() {
		return "member/myPage";
	}
	
}
