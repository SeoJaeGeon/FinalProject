package com.kh.kass.member.model.service;

import java.util.ArrayList;
import java.util.Map;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.Auth;
import com.kh.kass.common.PageInfo;
import com.kh.kass.member.model.vo.GoodsPurchase;
import com.kh.kass.member.model.vo.Member;
import com.kh.kass.member.model.vo.MoviePurchase;
import com.kh.kass.member.model.vo.MyMovieReview;
import com.kh.kass.member.model.vo.SnackPurchase;
import com.kh.kass.member.model.vo.VodPurchase;
import com.kh.kass.member.model.vo.Withdrawal;
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

	// vod 구매 내역 개수
	public int selectVodListCount(int userNo);

	// vod 구매 내역
	public ArrayList<VodPurchase> selectVodList(int userNo, PageInfo pi);

	// vod 구매 상세
	public VodPurchase selectVodPurchaseDetail(VodPurchase vp);

	// vod 리뷰 등록
	public int insertVodReview(Review r);

	// vod 리뷰 수정
	public int updateVodReview(Review r);

	// vod 리뷰 삭제
	public int deleteVodReview(Review r);

	// 내가 쓴 vod 리뷰 개수
	public int selectVodReviewListCount(int userNo);

	// 내가 쓴 vod 리뷰
	public ArrayList<MyMovieReview> selectVodReviewList(int userNo, PageInfo pi);

	// 스낵 구매 내역 개수
	public int selectSnackPurchaseListCount(int userNo);

	// 스낵 구매내역
	public ArrayList<SnackPurchase> selectSnackPurchaseList(int userNo, PageInfo pi);

	// 스낵 상세
	public ArrayList<SnackPurchase> selectSnackPurchasDetail(SnackPurchase sp);

	// 스낵 상세 count
	public ArrayList<SnackPurchase> selectSnackPurchaseDetailCount();

	// 굿즈 구매 내역 개수
	public int selectGoodsPurchaseListCount(int userNo);

	// 굿즈 구매 내역
	public ArrayList<GoodsPurchase> selectGoodsPurchaseList(int userNo, PageInfo pi);

	// 굿즈 상세
	public ArrayList<GoodsPurchase> selectGoodsPurchasDetail(GoodsPurchase gp);

	// 굿즈 상세 count
	public ArrayList<GoodsPurchase> selectGoodsPurchaseDetailCount();

	// 추천 vod
	public ArrayList<VodPurchase> selectRecommendVod(int userNo);

	// 스낵 status 수정
	public int updateSnackCodeStatus(int codeNo);

}
