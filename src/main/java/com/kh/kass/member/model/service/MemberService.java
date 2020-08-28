package com.kh.kass.member.model.service;

import com.kh.kass.member.model.vo.Member;

public interface MemberService {
	// 1. 회원 로그인 서비스를 위한 메소드
	public Member loginMember(Member m);

	// 2. 회원가입 서비스를 위한 메소드
	public int insertMember(Member m);

	// 3. 회원 정보 수정을 위한 메소드
	public int updateMember(Member m);

	// 4. 회원 탈퇴 서비스를 위한 메소드
	public int deleteMember(String id);

	// 5. 아이디 중복 검사를 위한 메소드
	public int checkIdDup(String id);

	// 6. 이메일 전송
//	public void mailSend(HttpSession session, String userEmail);

	// 7. 아이디 찾기
	public Member findId(Member m);

	// 8. 비밀번호 찾기
	public String findMember(Member m);

	
	
	
	
	
	
	
	
	
	
	
	
	
}
