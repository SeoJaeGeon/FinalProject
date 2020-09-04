package com.kh.kass.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.kass.common.Attachment;
import com.kh.kass.member.model.dao.MemberDao;
import com.kh.kass.member.model.vo.Member;
import com.kh.kass.member.model.vo.Withdrawal;


@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	@Autowired
	private MemberDao mDao;

	@Override
	public int insertMember(Member m) {
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPwd);
		return mDao.insertMember(m);
	}
	
	@Override
	public int checkIdDup(String id) {
		return mDao.checkIdDup(id);
	}

	/*@Override
	public void mailSend(HttpSession session, String userEmail) {
		try {
			MailHandler mailHandler = new MailHandler(JavaMailSenderImpl);			
			Random random = new Random(System.currentTimeMillis());
			long start = System.currentTimeMillis();
			
			int result = 100000 + random.nextInt(900000);
			
			// 받는사람
			mailHandler.setTo(userEmail);
			//보내는사람
			mailHandler.setFrom("sssamba.zzeong@gmail.com");
			//제목
			mailHandler.setSubject("안녕하세요. KASS CINEMA 인증코드 입니다.");
			// HTML layout
			String htmlContent = "<p>인증코드 : " + result + "</p>";
			mailHandler.setText(htmlContent, true);
			
			mailHandler.send();
			
			long end = System.currentTimeMillis();
			
			session.setAttribute(""+userEmail, result);
			System.out.println("실행시간 : " + (end - start)/1000.0);
			
			

		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}*/
	
	@Override
	public Member loginMember(Member m) {
		Member loginUser = mDao.selectMember(m);
		
		if(!bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			loginUser = null;
		}
		return loginUser;
	}
	
	
	@Override
	public int updateMember(Member m) {
		return mDao.updateMember(m);
	}
	
	@Override
	public Member findId(Member m) {
		Member findId = mDao.selectMemberId(m);
			
		return findId;
	}

	@Override
	public String findMember(Member m) {
		String pwdQ = mDao.selectPwdQ(m);	
		return pwdQ;
	}

	@Override
	public int findPwd(Member m) {
		// TODO Auto-generated method stub
		return mDao.findPwd(m);
	}

	@Override
	public int updatePwd(Member m) {
		String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
		m.setUserPwd(encPwd);
		return mDao.updatePwd(m);
	}

	@Override
	public int checkPwd(Member m) {
		Member loginUser = mDao.selectMember(m);
		int result = 1;
		if(!bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
			result = 0;
		}
		return result;
	}

	@Override
	public int insertReason(Withdrawal wd) {
		return mDao.insertReason(wd);
	}

	@Override
	public int deleteMember(Withdrawal wd) {
		return mDao.deleteMember(wd);
	}

	@Override
	public int uploadImg(Attachment at) {
		return mDao.uploadImg(at);
	}

	@Override
	public int deleteImg(Withdrawal wd) {
		return mDao.deleteImg(wd);
	}

	@Override
	public Attachment selectAtt(int userNo) {
		return mDao.selectAtt(userNo);
	}

	
}
