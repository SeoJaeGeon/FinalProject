package com.kh.kass.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.kh.kass.common.Attachment;
import com.kh.kass.common.Auth;
import com.kh.kass.common.PageInfo;
import com.kh.kass.common.PaginationA;
import com.kh.kass.member.model.exception.MemberException;
import com.kh.kass.member.model.service.MemberService;
import com.kh.kass.member.model.vo.GoodsPurchase;
import com.kh.kass.member.model.vo.Member;
import com.kh.kass.member.model.vo.MoviePurchase;
import com.kh.kass.member.model.vo.MyMovieReview;
import com.kh.kass.member.model.vo.ProductOrder;
import com.kh.kass.member.model.vo.SnackPurchase;
import com.kh.kass.member.model.vo.VodPurchase;
import com.kh.kass.member.model.vo.Withdrawal;
import com.kh.kass.review.model.vo.Review;
import com.kh.kass.vod.model.service.VodService;
import com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeUtility;

import oracle.jdbc.dcn.DatabaseChangeListener;

@SessionAttributes({ "loginUser", "msg" })
@Controller
public class MemberController {
	@Autowired
	private MemberService mService;
	@Autowired
	private VodService vService;


	// 회원가입 뷰
	@RequestMapping("minsertView.do")
	public String mInsertView() {
		return "member/insertMember";
	}

	// 회원가입
	@RequestMapping("minsert.do")
	public String insertMember(Member m, RedirectAttributes rd, @RequestParam("zipCode") String zipCode,
			@RequestParam("address1") String address1, @RequestParam("address2") String address2) {
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

		Map map = new HashMap();
		map.put("isUsable", isUsable);
		mv.addAllObjects(map);

		mv.setViewName("jsonView");

		return mv;
	}

	// 이메일 인증
	@GetMapping("emailSend.do")
	public ModelAndView emailAuth(Auth au, ModelAndView mv) {
		String userEmail = au.getUserEmail();
		String authNum = RandomNum();
		au.setAuthNum(authNum);

		System.out.println(au);
		sendEmail(userEmail, authNum);

		int result = mService.insertAuthNum(au);

		Map map = new HashMap();
		map.put("emailSendResult", result);
		mv.addAllObjects(map);

		mv.setViewName("jsonView");

		return mv;
	}

	// 인증번호 확인
	@RequestMapping("emailCheck.do")
	public ModelAndView emailCheck(Auth au, ModelAndView mv) {
		System.out.println(au);

		boolean isEmpty = mService.emailCheck(au) == 1 ? true : false;

		Map map = new HashMap();
		map.put("isEmpty", isEmpty);
		mv.addAllObjects(map);

		mv.setViewName("jsonView");

		mService.deleteAuth(au);

		return mv;
	}

	// 이메일 전송 메소드
	private void sendEmail(String email, String authNum) {
		// String host = "smtp.gmail.com"; // smtp 서버
		String subject = "KASS CINEMA 인증 코드";
		String fromName = "KASS CINEMA";
		String from = "sssamba.zzeong@gmail.com";
		String to1 = email;

		String content = "KASS CINEMA 인증번호 [ " + authNum + " ]";

		try {
			Properties props = new Properties(); // G-Mail STMP 사용시
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.fallback", "false");
			props.put("mail.smtp.ssl.trust", "*");

			Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("sssamba.zzeong@gmail.com", "sssambawjdgus");
				}
			});
			Message msg = new MimeMessage(mailSession);

			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B")));
			// 보내는 사람 설정

			InternetAddress receiveUser = new InternetAddress(to1);
			msg.setRecipient(Message.RecipientType.TO, receiveUser);
			msg.setSubject(subject); // 제목 설정
			msg.setSentDate(new java.util.Date()); // 보내는 날짜 설정
			msg.setContent(content, "text/html;charset=euc-kr"); // 내용 설정(HTML 형식)

			Transport.send(msg); // 메일보내기

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public String RandomNum() {
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < 6; i++) {
			int n = (int) (Math.random() * 10);
			buffer.append(n);
		}
		return buffer.toString();
	}

	// 로그인
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String memberLogin(@RequestParam("userId") String userId, @RequestParam("userPwd") String userPwd,
			Model model, RedirectAttributes rd) {
		Member m = new Member(userId, userPwd);

		Member loginUser = mService.loginMember(m);
		
		if (loginUser != null) {
			model.addAttribute("loginUser", loginUser);
		} else {
			rd.addFlashAttribute("msg", "존재하지 않는 아이디거나 아이디 또는  비밀번호가 틀렸습니다.");
		}
		System.out.println(loginUser);
		return "redirect:home.do";
	}

	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(SessionStatus status) {
		status.setComplete();

		return "redirect:home.do";
	}

	// 아이디 비밀번호 찾기 뷰 이동
	@RequestMapping("findUserInfoView.do")
	public String findUserInfo() {
		return "member/findUserInfo";
	}

	// 아이디 찾기
	@RequestMapping("mfindId.do")
	@ResponseBody
	public String findId(Member m) {
		Member findResult = mService.findId(m);

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		return gson.toJson(findResult);
	}

	// 비밀번호 찾기 - 회원찾기
	@RequestMapping(value = "mfind.do", produces = "application/text;charset=UTF-8")
	@ResponseBody
	public String findMember(Member m) {
		String findMember = mService.findMember(m);

		return findMember;
	}

	// 비밀번호 찾기
	@RequestMapping("mfindPwd.do")
	@ResponseBody
	public ModelAndView findPwd(Member m, ModelAndView mv) {
		boolean isUsable = mService.findPwd(m) == 0 ? true : false;

		Map map = new HashMap();
		map.put("isUsable", isUsable);
		mv.addAllObjects(map);

		mv.setViewName("jsonView");

		return mv;
	}

	// 비밀번호 재설정 페이지로 이동
	@RequestMapping("pwdResetView.do")
	public ModelAndView pwdResetView(Member m, ModelAndView mv) {
		mv.addObject("userId", m.getUserId());
		mv.setViewName("member/resetPwd");
		return mv;
	}

	// 비밀번호 재설정
	@RequestMapping("pwdReset.do")
	public String resetPwd(Member m, RedirectAttributes rd) throws Exception {
		int result = mService.updatePwd(m);

		if (result > 0) {
			rd.addFlashAttribute("msg", "비밀번호가 변경되었습니다. 새로운 비밀번호로 로그인 해주세요.");

			return "redirect:home.do";
		} else {
			throw new MemberException("비밀번호 재설정에 실패하였습니다.");
		}
	}

	// 마이페이지로 이동
	@RequestMapping("myKass.do")
	public ModelAndView myPage(ModelAndView mv, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");

		int userNo = m.getUserNo();
		ArrayList<VodPurchase> list = mService.selectRecommendVod(userNo);

		System.out.println("마이페이지용 카운트 userNo" + userNo);

		int moviePurchaseCount = mService.selectMovieListCount(userNo);
		int vodPurchaseCount = mService.selectVodListCount(userNo);
		int movieReviewCount = mService.selectMovieReviewListCount(userNo);
		int vodReviewCount = mService.selectVodReviewListCount(userNo);
		int vodWishlistCount = vService.selectListCount1(userNo);
		
		System.out.println(moviePurchaseCount);
		System.out.println(vodPurchaseCount);
		System.out.println(movieReviewCount);
		System.out.println(vodReviewCount);
		System.out.println(vodWishlistCount);
		
		mv.addObject("list", list);
		mv.addObject("moviePurchaseCount", moviePurchaseCount);
		mv.addObject("vodPurchaseCount", vodPurchaseCount);
		mv.addObject("movieReviewCount", movieReviewCount);
		mv.addObject("vodReviewCount", vodReviewCount);
		mv.addObject("vodWishlistCount", vodWishlistCount);

		mv.setViewName("member/myPage");

		return mv;
	}

	// 회원정보 수정
	@RequestMapping("mupdateView.do")
	public String updateMemberView() {
		return "member/updateMember";
	}

	// 회원정보 수정 비밀번호 확인 뷰
	@RequestMapping("mupdatePwdCheckView.do")
	public String updatePwdCheckView() {
		return "member/updatePwdCheck";
	}

	// 회원 정보 수정 비밀번호 확인
	@RequestMapping("checkPwd.do")
	@ResponseBody
	public ModelAndView checkPwd(Member m, Model model, ModelAndView mv) {
		/*
		 * Member loginUser = (Member) model.getAttribute("loginUser");
		 * m.setUserId(loginUser.getUserId());
		 */
		boolean isEmpty = mService.checkPwd(m) == 0 ? true : false;

		Map map = new HashMap();
		map.put("isEmpty", isEmpty);
		mv.addAllObjects(map);

		mv.setViewName("jsonView");

		return mv;
	}

	// 회원정보수정
	@RequestMapping("mupdate.do")
	public String updateMember(Member m, RedirectAttributes rd, Model model, @RequestParam("zipCode") String zipCode,
			@RequestParam("address1") String address1, @RequestParam("address2") String address2,
			HttpServletRequest request, @RequestParam(value = "uploadfile", required = false) MultipartFile file) {

		Attachment att = mService.selectAtt(m.getUserNo());

		String renameFileName;
		if (att == null) { // 한번도 사진이 업데이트 된 적 없을
			if (!file.getOriginalFilename().equals("")) {
				renameFileName = saveFile(file, request);

				if (renameFileName != null) {
					att = new Attachment();
					String renamePath = "\\resources\\images\\muploadFiles\\";
					att.setFilePath(renamePath);
					att.setOriginFileName(file.getOriginalFilename());
					att.setRenameFileName(renameFileName);
					att.setUserNo(m.getUserNo());

					int result1 = mService.uploadImg(att);

					if (result1 > 0) {
						m.setAttachment(att);
						model.addAttribute("loginUser", m);
					} else {
						throw new MemberException("사진업로드 실패");
					}
				}
			}
		} else { // 입력 된 사진이 있을

			if (file != null && !file.isEmpty()) { // INPU
				renameFileName = saveFile(file, request);

				if (att.getRenameFileName() != null) {
					deleteFile(att.getRenameFileName(), request);
				}
				// 파일이 업로드 되었다면 별도의 메소드를 통해 파일 저장

				if (renameFileName != null) {
					String renamePath = "\\resources\\images\\muploadFiles\\";

					att.setFilePath(renamePath);
					att.setOriginFileName(file.getOriginalFilename());
					att.setRenameFileName(renameFileName);
					att.setUserNo(m.getUserNo());

					int result1 = mService.uploadImg(att);

					if (result1 > 0) {
						m.setAttachment(att);
						model.addAttribute("loginUser", m);
					} else {
						throw new MemberException("사진업로드 실패");
					}
				}
			} else {
				m.setAttachment(att);
				model.addAttribute("loginUser", m);
			}
		}

		m.setUserAddr(zipCode + "," + address1 + "," + address2);

		int result2 = mService.updateMember(m);

		if (result2 <= 0) {
			throw new MemberException("회원정보 수정에 실패하였습니다.");
		}

		rd.addFlashAttribute("msg", "회원정보가 수정되었습니다.");
		model.addAttribute("loginUser", m);
		return "redirect:myKass.do";
	}

	// 파일 저장을 위한 별도 메소드
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 파일이 저장 될 경로 설정
		// 해당 resources는 webapp 하위의 resources
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\muploadFiles";

		File folder = new File(savePath); // savePath 폴더를 불러와서
		// 해당 폴더 경로가 존재하는지 확인하고
		if (!folder.exists()) { // 존재하지 않는다면
			folder.mkdirs(); // 해당 경로를 먼저 생성한다
		}

		// 파일 rename 규칙 -> 년월일시분초.확장자
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new Date()) + originFileName.substring(originFileName.lastIndexOf("."));

		String renamePath = folder + "\\" + renameFileName;

		try {
			file.transferTo(new File(renamePath));
		} catch (IOException e) {
			e.printStackTrace();
		}

		return renameFileName;
	}

	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\images\\muploadFiles";

		File deleteFile = new File(savePath + "\\" + fileName);

		if (deleteFile.exists()) {
			deleteFile.delete();
		}
	}

	// 비밀번호 변경 뷰
	@RequestMapping("updatePwdView.do")
	public String updatePwdView() {
		return "member/updatePwd";
	}

	// 비밀번호 변경
	@RequestMapping("updatePwd.do")
	public String updatePwd(Member m, @RequestParam("newPwd") String newPwd, RedirectAttributes rd,
			SessionStatus status) {

		m.setUserPwd(newPwd);
		int result = mService.updatePwd(m);

		if (result > 0) {
			rd.addFlashAttribute("msg", "비밀번호가 변경되었습니다. 새로운 비밀번호로 로그인 해주세요.");
			status.setComplete();
			return "redirect:home.do";

		} else {
			throw new MemberException("비밀번호 변경에 실패하였습니다.");
		}
	}

	// 6. 회원 탈퇴
	// 회원탈퇴 뷰
	@RequestMapping("mdeleteView.do")
	public String deleteMemberView() {
		return "member/deleteMember";
	}

	// 회원탈퇴
	@RequestMapping("mdelete.do")
	public String deleteMember(Withdrawal wd, SessionStatus status, HttpServletRequest request, RedirectAttributes rd) {
		Attachment att = mService.selectAtt(wd.getUserNo());
		int result = mService.deleteMember(wd);
		// int userNo = wd.getUserNo();

		// Attachment att = mService.selectAtt(userNo); //프로필사진 select

		int result2 = mService.insertReason(wd);

		int result3 = mService.deleteImg(wd);

		if (att != null) {
			if (att.getRenameFileName() != null) {
				deleteFile(att.getRenameFileName(), request);
			}
		}

		if (result > 0 && result2 > 0 && result3 >= 0) {

			rd.addFlashAttribute("msg", "회원탈퇴가 완료되었습니다.");
			status.setComplete();

			return "redirect:home.do";
		} else {
			throw new MemberException("회원 탈퇴에 실패하였습니다.");
		}
	}

	// ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

	// 영화 예매 리스트
	@RequestMapping("moviePurchaseList.do")
	public ModelAndView moviePurchaseList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();

		int currentPage = page != null ? page : 1;

		int listCount = mService.selectMovieListCount(userNo);

		PageInfo pi = PaginationA.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<MoviePurchase> list = mService.selectMovieList(userNo, pi);
		System.out.println("영화 예매리스트!" + list);
		// System.out.println(list.size()+"사이즈?");

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("member/moviePurchaseList");
		} else {
			throw new MemberException("리스트 조회 실패");
		}

		return mv;
	}

	// 내가 쓴 영화 리뷰3
	@RequestMapping("movieReviewList.do")
	public ModelAndView movieReviewList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();

		int currentPage = page != null ? page : 1;

		int listCount = mService.selectMovieReviewListCount(userNo);

		PageInfo pi = PaginationA.getPageInfo(currentPage, listCount);

		System.out.println(userNo);

		ArrayList<MyMovieReview> list = mService.selectMovieReviewList(userNo, pi);
		System.out.println("영화 리뷰리스트!" + list);
		System.out.println(listCount + " 리스트카운트");
		System.out.println("pi" + pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("member/myMovieReviewList");
		} else {
			throw new MemberException("리스트 조회 실패");
		}

		return mv;
	}

	// 영화 리뷰 등록
	@RequestMapping("mrinsert.do")
	public String insertMovieReview(@RequestParam("tabs") String reScore, @RequestParam("reContent") String reContent,
			@RequestParam("movieNo") int movieNo, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		Review r = new Review();
		r.setUserNo(m.getUserNo());
		r.setReScore(reScore);
		r.setReContent(reContent);
		r.setMovieNo(movieNo);

		System.out.println(r);
		int result = mService.insertMovieReview(r);

		if (result > 0) {
			return "member/moviePurchaseList";
		} else {
			throw new MemberException("리뷰등록실패");
		}
	}

	// 영화 리뷰 수정
	@RequestMapping("mrupdate.do")
	public String updateMovieReview(@RequestParam("tabs") String reScore, @RequestParam("reContent") String reContent,
			@RequestParam("movieNo") int movieNo, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		Review r = new Review();
		r.setUserNo(m.getUserNo());
		r.setReScore(reScore);
		r.setReContent(reContent);
		r.setMovieNo(movieNo);

		System.out.println(r);
		int result = mService.updateMovieReview(r);

		if (result > 0) {
			return "member/myMovieReviewList";
		} else {
			throw new MemberException("리뷰수정실패");
		}
	}

	// 영화 리뷰 삭제
	@RequestMapping("mrdelete.do")
	public String deleteMovieReview(int movieNo, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		Review r = new Review();
		r.setUserNo(m.getUserNo());
		r.setMovieNo(movieNo);

		int result = mService.deleteMovieReview(r);

		if (result > 0) {
			return "redirect:movieReviewList.do";
		} else {
			throw new MemberException("리뷰삭제실패");
		}
	}

	// vod 구매 내역 리스트
	@RequestMapping("vodPurchaseList.do")
	public ModelAndView vodPurchaseList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();

		System.out.println(userNo + "vod 유저번호");
		int currentPage = page != null ? page : 1;

		int listCount = mService.selectVodListCount(userNo);

		PageInfo pi = PaginationA.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<VodPurchase> list = mService.selectVodList(userNo, pi);
		System.out.println("vod 리스트!" + list);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("member/vodPurchaseList");
		} else {
			throw new MemberException("리스트 조회 실패");
		}
		return mv;
	}

	// vod 보기
	@RequestMapping("vodPurchaseDetail.do")
	public ModelAndView vodPurchaseDetail(ModelAndView mv, int movieNo, @RequestParam("page") Integer page,
			HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();

		int currentPage = page != null ? page : 1;

		VodPurchase vp = new VodPurchase();
		vp.setUserNo(userNo);
		vp.setMovieNo(movieNo);

		System.out.println(vp);

		VodPurchase vodPurchase = mService.selectVodPurchaseDetail(vp);

		if (vodPurchase != null) {
			mv.addObject("vodPurchase", vodPurchase);
			mv.addObject("currentPage", currentPage);
			mv.setViewName("member/vodPurchaseDetail");
		} else {
			throw new MemberException("게시글 상세조회에 실패하였습니다");
		}

		return mv;
	}

	// 내가 쓴 vod 리뷰
	@RequestMapping("vodReviewList.do")
	public ModelAndView vodReviewList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();

		int currentPage = page != null ? page : 1;

		int listCount = mService.selectVodReviewListCount(userNo);

		PageInfo pi = PaginationA.getPageInfo(currentPage, listCount);

		System.out.println(userNo);

		ArrayList<MyMovieReview> list = mService.selectVodReviewList(userNo, pi);
		System.out.println("영화 리뷰리스트!" + list);
		System.out.println(listCount + " 리스트카운트");
		System.out.println("pi" + pi);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("member/myVODReviewList");
		} else {
			throw new MemberException("리스트 조회 실패");
		}

		return mv;
	}

	// vod 리뷰 등록
	@RequestMapping("vrinsert.do")
	public String insertVodReview(@RequestParam("tabs") String reScore, @RequestParam("reContent") String reContent,
			@RequestParam("movieNo") int movieNo, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		Review r = new Review();
		r.setUserNo(m.getUserNo());
		r.setReScore(reScore);
		r.setReContent(reContent);
		r.setMovieNo(movieNo);

		System.out.println(r);
		int result = mService.insertVodReview(r);

		if (result > 0) {
			return "member/vodPurchaseList";
		} else {
			throw new MemberException("리뷰등록실패");
		}
	}

	// vod 리뷰 수정
	@RequestMapping("vrupdate.do")
	public String updateVodReview(@RequestParam("tabs") String reScore, @RequestParam("reContent") String reContent,
			@RequestParam("movieNo") int movieNo, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		Review r = new Review();
		r.setUserNo(m.getUserNo());
		r.setReScore(reScore);
		r.setReContent(reContent);
		r.setMovieNo(movieNo);

		System.out.println(r);
		int result = mService.updateVodReview(r);

		if (result > 0) {
			return "member/myVODReviewList";
		} else {
			throw new MemberException("리뷰수정실패");
		}
	}

	// vod 리뷰 삭제
	@RequestMapping("vrdelete.do")
	public String deleteVodReview(int movieNo, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		Review r = new Review();
		r.setUserNo(m.getUserNo());
		r.setMovieNo(movieNo);

		int result = mService.deleteVodReview(r);

		if (result > 0) {
			return "redirect:vodReviewList.do";
		} else {
			throw new MemberException("리뷰삭제실패");
		}
	}

	// 스낵 구매 내역 리스트
	@RequestMapping("snackPurchaseList.do")
	public ModelAndView snackPurchaseList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();

		int currentPage = page != null ? page : 1;

		int listCount = mService.selectSnackPurchaseListCount(userNo);
		PageInfo pi = PaginationA.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<SnackPurchase> counting = mService.selectSnackPurchaseDetailCount();
		System.out.println(counting + "counting");

		ArrayList<SnackPurchase> list = mService.selectSnackPurchaseList(userNo, pi);
		System.out.println("스낵구매리스트!" + list);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("counting", counting);
			mv.addObject("pi", pi);
			mv.setViewName("member/snackPurchaseList");
		} else {
			throw new MemberException("리스트 조회 실패");
		}

		return mv;
	}

	// 스낵 구매 상세
	@RequestMapping("snackPurchaseDetail.do")
	public ModelAndView snackPurchaseListDetail(ModelAndView mv, String orderNum,
			@RequestParam(value = "page", required = false) Integer page, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();

		int currentPage = page != null ? page : 1;

		SnackPurchase sp = new SnackPurchase();

		ArrayList<ProductOrder> spl = new ArrayList<ProductOrder>();

		ProductOrder po = new ProductOrder();

		po.setUserNo(userNo);
		spl.add(po);
		sp.setOrderNum(orderNum);
		sp.setProdOrderList(spl);

		System.out.println("sp????" + sp);

		ArrayList<SnackPurchase> detailList = mService.selectSnackPurchasDetail(sp);
		System.out.println("스낵구매상세리스트!" + detailList);

		if (detailList != null) {

			for (int i = 0; i < detailList.size(); i++) {
				Date today = new Date();
				Date codeTerm = detailList.get(i).getProdOrderList().get(i).getCodeTerm();

				for (int j = 0; j < detailList.get(i).getProdOrderList().size(); j++) {
					int codeNo = detailList.get(i).getProdOrderList().get(j).getCodeNo();

					int compare = today.compareTo(codeTerm);

					if (compare > 0) {
						int result = mService.updateSnackCodeStatus(codeNo);
						System.out.println("코드 상태 업데이트함?" + result);
					}
				}
			}
			detailList = mService.selectSnackPurchasDetail(sp);
			mv.addObject("detailList", detailList);
			mv.addObject("currentPage", currentPage);
			mv.setViewName("member/snackPurchaseDetail");
		} else {
			throw new MemberException("스낵 상세 조회 실패");
		}

		return mv;
	}

	// 굿즈 구매 내역 리스트 뷰
	@RequestMapping("goodsPurchaseList.do")
	public ModelAndView goodsPurchaseListView(ModelAndView mv,
			@RequestParam(value = "page", required = false) Integer page, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();

		int currentPage = page != null ? page : 1;

		int listCount = mService.selectGoodsPurchaseListCount(userNo);

		PageInfo pi = PaginationA.getPageInfo(currentPage, listCount);

		System.out.println(listCount);

		ArrayList<GoodsPurchase> counting = mService.selectGoodsPurchaseDetailCount();
		System.out.println(counting + "counting");

		ArrayList<GoodsPurchase> list = mService.selectGoodsPurchaseList(userNo, pi);
		System.out.println("굿즈구매리스트!" + list);

		if (list != null) {
			mv.addObject("list", list);
			mv.addObject("counting", counting);
			mv.addObject("pi", pi);
			mv.setViewName("member/goodsPurchaseList");
		} else {
			throw new MemberException("리스트 조회 실패");
		}
		return mv;
	}

	// 굿즈 구매 상세
	@RequestMapping("goodsPurchaseDetail.do")
	public ModelAndView goodsPurchaseListDetail(ModelAndView mv, String orderNum,
			@RequestParam(value = "page", required = false) Integer page, HttpSession session) {
		Member m = (Member) session.getAttribute("loginUser");
		int userNo = m.getUserNo();

		int currentPage = page != null ? page : 1;

		GoodsPurchase gp = new GoodsPurchase();

		ArrayList<ProductOrder> gpl = new ArrayList<ProductOrder>();

		ProductOrder po = new ProductOrder();

		po.setUserNo(userNo);
		gpl.add(po);
		gp.setOrderNum(orderNum);
		gp.setProdOrderList(gpl);

		System.out.println("gp????" + gp);

		ArrayList<GoodsPurchase> detailList = mService.selectGoodsPurchasDetail(gp);
		System.out.println("굿즈구매상세리스트!" + detailList);

		if (detailList != null) {
			mv.addObject("detailList", detailList);
			mv.addObject("currentPage", currentPage);
			mv.setViewName("member/goodsPurchaseDetail");
		} else {
			throw new MemberException("굿즈 상세 조회 실패");
		}

		return mv;
	}

	// 장바구니
	@RequestMapping("myCartView.do")
	public String myCartView() {
		return "member/myCart";
	}
}
