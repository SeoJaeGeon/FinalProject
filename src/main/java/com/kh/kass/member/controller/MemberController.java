package com.kh.kass.member.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.kass.member.model.exception.MemberException;
import com.kh.kass.member.model.service.MemberService;
import com.kh.kass.member.model.vo.Member;

import net.sf.json.JSONObject;

@SessionAttributes({ "loginUser", "msg" })
@Controller
public class MemberController {
	@Autowired
	private MemberService mService;

//	@Autowired
//	private JavaMailSenderImpl mailSender;

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

		if (result > 0) {
//			rd.addFlashAttribute("msg", "회원가입이 완료되었습니다. 로그인 해주세요.");
			return "member/insertMemberAfter";
		} else {
			throw new MemberException("회원가입에 실패하였습니다.");
		}
	}

	// 아이디 중복체크
	@RequestMapping("idDupCheck.do")
	public ModelAndView idDuplicateCheck(String userId, ModelAndView mv) {
		boolean isUsable = mService.checkIdDup(userId) == 0 ? true : false;
//		System.out.println("result : " + mService.checkIdDup(userId));
//		System.out.println("isUsable:" + isUsable);
		Map map = new HashMap();
		map.put("isUsable", isUsable);
		mv.addAllObjects(map);

		mv.setViewName("jsonView");

		return mv;
	}
	
	// 회원가입 후
		@RequestMapping("minserAfter.do")
		public String mInsertafter() {
			return "redirect:home.do";
		}

	// 이메일 인증
	/*@RequestMapping(value = "/sendEmail.do.do")
	public String sendMail(final MailVO vo) {
		final MimeMessagePreparator preparator = new MimeMessagePreparator() {
			@Override
			public void prepare(MimeMessage mimeMessage) throws Exception {
				final MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				helper.setFrom(vo.getFrom());
				helper.setTo(vo.getTo());
				helper.setSubject(vo.getSubject());
				helper.setText(vo.getContents(), true);
			}
		};
		mailSender.send(preparator);
		return "result";
	}*/

	// 2. 로그인
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String memberLogin(Member m, Model model) {
		Member loginUser = mService.loginMember(m);

		if (loginUser != null) {
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
	
	// 4. 아이디 비밀번호 찾기 뷰 이동
	@RequestMapping("findUserInfoView.do")
	public String findUserInfo() {
		return "member/findUserInfo";
	}
	
	// 아이디 찾기
	@RequestMapping("mfindId.do")
	@ResponseBody
	public String findId(Member m, ModelAndView mv) {
		Member findResult = mService.findId(m);
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		
		System.out.println(findResult);
		
		return gson.toJson(findResult);
	}
	
	// 비밀번호 찾기
	@RequestMapping(value="mfind.do", produces="application/text;charset=UTF-8")
	@ResponseBody
	public String findMember(Member m, ModelAndView mv) {
		String findMember = mService.findMember(m);
		
		System.out.println("질문이 잘 찾아와 지나요?" + findMember);
		
		return findMember;
	}

	// 4. 마이페이지로 이동
	@RequestMapping("myKass.do")
	public String myPage() {
		return "member/myPage";
	}
	
	// 5. 회원정보 수정
	@RequestMapping("mupdateView.do")
	public String updateMemberView() {
		return "member/updateMember";
	}
	
	// 회원정보수정
	@RequestMapping("mupdate.do")
	public String updateMember(Member m, RedirectAttributes rd, Model model,
			@RequestParam("zipCode") String zipCode,
			@RequestParam("address1") String address1,
			@RequestParam("address2") String address2){
		int result = mService.updateMember(m);
		
		if(result > 0) {
			rd.addFlashAttribute("msg", "회원정보가 수정되었습니다.");
			model.addAttribute("loginUser", m);
			return "redirct:home.do";
		} else {
			throw new MemberException("회원정보 수정에 실패하였습니다.");
		}
		
	}

}
