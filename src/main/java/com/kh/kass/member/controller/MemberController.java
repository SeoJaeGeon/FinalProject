package com.kh.kass.member.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import com.kh.kass.member.model.exception.MemberException;
import com.kh.kass.member.model.service.MemberService;
import com.kh.kass.member.model.vo.Member;
import com.kh.kass.member.model.vo.Withdrawal;
import com.sun.xml.internal.messaging.saaj.packaging.mime.internet.MimeUtility;

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
	public String insertMember(Member m, RedirectAttributes rd, @RequestParam("zipCode") String zipCode,
			@RequestParam("address1") String address1, @RequestParam("address2") String address2) {
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
	
	@RequestMapping("emailSend.do")
	public ModelAndView emailAuth(String userEmail, ModelAndView mv, HttpServletRequest response, HttpServletRequest request) {
//		String email = request.getParameter("userEmail");
		System.out.println(userEmail);
		
		String authNum = "";

		authNum = RandomNum();

		sendEmail(userEmail.toString(), authNum);

		mv.setViewName("memeber/insertMember.jsp");
		mv.addObject("email", userEmail);
		mv.addObject("code", authNum);

		return mv;

	}

	private void sendEmail(String email, String authNum) {
		String host = "stmp.gmail.com"; // smtp 서버 String subject = "KASS CINEMA 인증코드 "; String
		String subject = "KASS CINEMA 인증 코드";
		String fromName = "KASS CINEMA";
		String from = "    ";
		String to1 = email;

		String content = "인증번호 [ " + authNum + " ]";

		
		try {
			Properties props = new Properties(); // G-Mail STMP 사용시
			props.put("mail.stmp.starttls.enable", "true");
			props.put("mail.transport.protocol", "stmp");
			props.put("mail.stmp.host", host);
			props.setProperty("mail.smtp.socketFactory.clss", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.stmp.port", "456");
			props.put("mail.stmp.user", from);
			props.put("mail.stmp.auth", "true");

			Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("sssamba.zzeong@gmail.com", "sssambawjdgus");
				}
			});
			Message msg = new MimeMessage(mailSession);
			
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B")));
			// 보내는 사람 설정
			
			InternetAddress[] address1 = { new InternetAddress(to1) };
			msg.setRecipients(Message.RecipientType.TO, address1);
			msg.setSubject(subject); // 제목 설정
			msg.setSentDate(new java.util.Date()); // 보내는 날짜 설정
			msg.setContent(content, "text/html;cherset=euc-kr"); // 내용 설정(HTML 형식)
			
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
			int n = (int)(Math.random() * 10);
			buffer.append(n);
		}
		
		return buffer.toString();
		
	}
	// 2. 로그인
	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String memberLogin(@RequestParam("userId") String userId, @RequestParam("userPwd") String userPwd, Model model, RedirectAttributes rd) {
		Member m = new Member(userId, userPwd);
		
		System.out.println("m?:"+m);
		Member loginUser = mService.loginMember(m);
		
		System.out.println(loginUser);
		if (loginUser != null) {
			model.addAttribute("loginUser", loginUser);
		} else {
			// rd.addFlashAttribute("msg", "아이디 또는 비밀번호가 틀렸습니다.");
			throw new MemberException("로그인실패");
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
	public String findId(Member m) {
		Member findResult = mService.findId(m);

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();

		System.out.println(findResult);

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
		System.out.println("Member?" + m);

		int result = mService.updatePwd(m);

		if (result > 0) {
			rd.addFlashAttribute("msg", "비밀번호가 변경되었습니다. 새로운 비밀번호로 로그인 해주세요.");

			return "redirect:home.do";
		} else {
			throw new MemberException("비밀번호 재설정에 실패하였습니다.");
		}
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

		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\muploadFiles";
		File folder = new File(savePath);
		
		m.setUserAddr(zipCode + "," + address1 + "," + address2);

		int result2 = mService.updateMember(m);
		
		if (!file.getOriginalFilename().equals("")) {
			// 파일이 업로드 되었다면 별도의 메소드를 통해 파일 저장
			String renameFileName = saveFile(file, request);
			String renamePath = folder + "\\" + renameFileName;
			System.out.println("f:"+folder);
			System.out.println("r:"+renamePath);

			if (renameFileName != null) {
				Attachment att = new Attachment(renamePath, file.getOriginalFilename(), renameFileName, m.getUserNo());
				System.out.println(att);
				int result1 = mService.uploadImg(att);

				if (result1 > 0) {
					m.setAttachment(att);
					model.addAttribute("loginUser", m);
				} else {
					throw new MemberException("사진업로드 실패");
				}
			}
		}
		
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

		String savePath = root + "\\muploadFiles";

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
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		return renameFileName;
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
		int result = mService.deleteMember(wd);
		//int userNo = wd.getUserNo();
		
		//Attachment att = mService.selectAtt(userNo); //프로필사진 select

		int result2 = mService.insertReason(wd);
		
		int result3 = mService.deleteImg(wd);

		if (result > 0 && result2 > 0 && result3 >= 0) {
			/*if(att.getRenameFileName() != null) {
				deleteFile(att.getRenameFileName(), request);
			}*/
			rd.addFlashAttribute("msg", "회원탈퇴가 완료되었습니다.");
			status.setComplete();

			return "redirect:home.do";
		} else {
			throw new MemberException("회원 탈퇴에 실패하였습니다.");
		}
	}
	
	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\muploadFiles";
		
		File deleteFile = new File(savePath + "\\" + fileName);
		
		if(deleteFile.exists()) {
			deleteFile.delete();
		}
	}

}
