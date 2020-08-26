package com.kh.kass.member.model.service;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.kass.common.MailHandler;
import com.kh.kass.member.model.dao.MemberDao;
import com.kh.kass.member.model.vo.Member;

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

	@Override
	public void mailSend(HttpSession session, String userEmail) {
//		MailHandler mailHandler = new MailHandler(JavaMailSenderImpl);
//		Random random = new Random(System.currentTimeMillis());

		
	}
	
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
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMember(String id) {
		// TODO Auto-generated method stub
		return 0;
	}


	
	
	
}
