package com.kh.kass.member.model.service;

import com.kh.kass.common.Attachment;
import com.kh.kass.member.model.vo.Member;
import com.kh.kass.member.model.vo.Withdrawal;

public interface MemberService {
	// 회원 로그인 서비스를 위한 메소드
	public Member loginMember(Member m);

	// 회원가입 서비스를 위한 메소드
	public int insertMember(Member m);

	// 회원 정보 수정을 위한 메소드
	public int updateMember(Member m);

	// 회원 탈퇴 서비스를 위한 메소드
	public int deleteMember(Withdrawal wd);

	// 아이디 중복 검사를 위한 메소드
	public int checkIdDup(String id);

	// 이메일 전송
//	public void mailSend(HttpSession session, String userEmail);

	// 아이디 찾기
	public Member findId(Member m);

	// 비밀번호찾기 - 회원찾기
	public String findMember(Member m);

	// 비밀번호 찾기
	public int findPwd(Member m);

	// 비밀번호 재설정
	public int updatePwd(Member m);

	// 비밀번호 확인
	public int checkPwd(Member loginUser);

	// 회원탈퇴 이유
	public int insertReason(Withdrawal wd);

	// 사진 업로드
	public int uploadImg(Attachment at);

	// 사진 삭제
	public int deleteImg(Withdrawal wd);

	// 프로필사진 select
	public Attachment selectAtt(int userNo);

	
	
	
	
	
	
	
	
	
	
	
	
}
