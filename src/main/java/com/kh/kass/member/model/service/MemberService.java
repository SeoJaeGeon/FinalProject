package com.kh.kass.member.model.service;

import java.util.ArrayList;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.Auth;
import com.kh.kass.common.PageInfo;
import com.kh.kass.member.model.vo.Member;
import com.kh.kass.member.model.vo.MoviePurchase;
import com.kh.kass.member.model.vo.Withdrawal;
import com.kh.kass.review.model.vo.MyMovieReview;
import com.kh.kass.review.model.vo.Review;

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

	// 인증번호 임시 저장
	public int insertAuthNum(Auth au);

	// 인증번호 조회
	public int emailCheck(Auth au);

	// 인증번호 삭제
	public int deleteAuth(Auth au);

	// 영화 예매 리스트 개수
	public int selectMovieListCount(int userNo);

	// 영화 예매 내역 조회
	public ArrayList<MoviePurchase> selectMovieList(int userNo, PageInfo pi);

	// 내가 쓴 영화 리뷰 개수
	public int selectMovieReviewListCount(int userNo);
	
	// 내가 쓴 영화 리뷰
	public ArrayList<MyMovieReview> selectMovieReviewList(int userNo, PageInfo pi);
	// 리뷰 등록
	public int insertMovieReview(Review r);

	// 리뷰 수정
	public int updateMovieReview(Review r);

	// 리뷰 삭제
	public int deleteMovieReview(Review r);


	
	
	
	
	
	
	
	
	
	
	
	
}
