package com.kh.kass.member.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

@Repository("mDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	// 회원가입
	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	// 회원 select
	public Member selectMember(Member m) {
		return sqlSession.selectOne("memberMapper.selectMember", m);
	}

	// 아이디 중복확인
	public int checkIdDup(String id) {
		return sqlSession.selectOne("memberMapper.idCheck", id);
	}

	// 아이디 찾기
	public Member selectMemberId(Member m) {
		return sqlSession.selectOne("memberMapper.findId", m);
	}

	// 비밀번호 찾기 1차
	public String selectPwdQ(Member m) {
		return sqlSession.selectOne("memberMapper.findPwdQ", m);
	}

	// 비밀번호찾기 2차
	public int findPwd(Member m) {
		return sqlSession.selectOne("memberMapper.findPwd", m);
	}

	// 비밀번호 재설정
	public int updatePwd(Member m) {
		return sqlSession.update("memberMapper.updatePwd", m);
	}

	// 비밀번호 확인
	public int pwdCheck(Member m) {
		return sqlSession.selectOne("memberMapper.checkPwd", m);
	}

	// 회원정보수정
	public int updateMember(Member m) {
		return sqlSession.update("memberMapper.updateMember", m);
	}

	// 회원 탈퇴 이유 등록
	public int insertReason(Withdrawal wd) {
		return sqlSession.update("memberMapper.insertReason", wd);
	}

	// 회원 탈퇴
	public int deleteMember(Withdrawal wd) {
		return sqlSession.update("memberMapper.deleteMember", wd);
	}

	// 사진 업로드
	public int uploadImg(Attachment at) {
		return sqlSession.update("memberMapper.uploadImg", at);
	}

	// 탈퇴 시 사진 삭제
	public int deleteImg(Withdrawal wd) {
		return sqlSession.delete("memberMapper.deleteImg", wd);
	}

	// 프로필사진 select
	public Attachment selectAtt(int userNo) {
		return sqlSession.selectOne("memberMapper.selectAtt", userNo);
	}

	// 인증번호 임시저장
	public int insertAuthNum(Auth au) {
		return sqlSession.update("memberMapper.insertAuthNum", au);
	}

	// 인증번호 확인
	public int emailCheck (Auth au) {
		return sqlSession.selectOne("memberMapper.emailCheck", au);
	}

	// 인증번호 삭제
	public int deleteAuth(Auth au) {
		return sqlSession.delete("memberMapper.deleteAuth", au);
	}

	public int selectMovieListCount(int userNo) {
		return sqlSession.selectOne("memberMapper.selectMovieListCount", userNo);
	}

	public ArrayList<MoviePurchase> selectMovieList(int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("memberMapper.selectMovieList", userNo, rowBounds);
	}

	public int insertMovieReview(Review r) {
		return sqlSession.insert("memberMapper.insertMovieReview", r);
	}

	public ArrayList<MyMovieReview> selectMovieReviewList(int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("memberMapper.selectMovieReviewList", userNo, rowBounds);
	}

	public int selectMovieReviewListCount(int userNo) {
		return sqlSession.selectOne("memberMapper.selectMovieReviewListCount", userNo);
	}

	public int updateMovieReview(Review r) {
		return sqlSession.update("memberMapper.updateMovieReview", r);
	}

	public int deleteMovieReview(Review r) {
		return  sqlSession.delete("memberMapper.deleteMovieReview", r);
	}

	public int selectVodListCount(int userNo) {
		return sqlSession.selectOne("memberMapper.selectVodPurchaseListCount", userNo);
	}

	public ArrayList<VodPurchase> selectVodList(int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("memberMapper.selectVodPurchaseList", userNo, rowBounds);
	}

	public VodPurchase selectVodPurchaseDetail(VodPurchase vp) {
		return sqlSession.selectOne("memberMapper.selectVodPurchaseDetail", vp);
	}

	public int insertVodReview(Review r) {
		return sqlSession.insert("memberMapper.insertVodReview", r);
	}

	public int updateVodReview(Review r) {
		return sqlSession.update("memberMapper.updateVodReview", r);
	}

	public int deleteVodReview(Review r) {
		return sqlSession.delete("memberMapper.deleteVodReview", r);
	}
	
	public int selectVodReviewListCount(int userNo) {
		return sqlSession.selectOne("memberMapper.selectVodReviewListCount", userNo);
	}

	public ArrayList<MyMovieReview> selectVodReviewList(int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("memberMapper.selectVodReviewList", userNo, rowBounds);
	}

	public int selectSnackPurchaseListCount(int userNo) {
		return sqlSession.selectOne("memberMapper.selectSnackPurchaseListCount", userNo);
	}

	public ArrayList<SnackPurchase> selectSnackPurchaseList(int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("memberMapper.selectSnackPurchaseList", userNo, rowBounds);
	}

	public ArrayList<SnackPurchase> selectSnackPurchaseDetail(SnackPurchase sp) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectSnackPurchaseDetail", sp);
	}
	
	public ArrayList<SnackPurchase> selectSnackPurchaseDetailCount(){
		return (ArrayList)sqlSession.selectList("memberMapper.selectSnackPurchaseDetailCount");
	}
	
	public int selectGoodsPurchaseListCount(int userNo) {
		return sqlSession.selectOne("memberMapper.selectGoodsPurchaseListCount", userNo);
	}

	public ArrayList<GoodsPurchase> selectGoodsPurchaseList(int userNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("memberMapper.selectGoodsPurchaseList", userNo, rowBounds);
	}
	
	public ArrayList<GoodsPurchase> selectGoodsPurchaseDetail(GoodsPurchase gp) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectGoodsPurchaseDetail", gp);
	}

	public ArrayList<GoodsPurchase> selectGoodsPurchaseDetailCount() {
		return (ArrayList)sqlSession.selectList("memberMapper.selectGoodsPurchaseDetailCount");
	}
	
	public ArrayList<VodPurchase> selectRecommendVod(int userNo) {
		return (ArrayList)sqlSession.selectList("memberMapper.selectRecommendVod", userNo);
	}

	public int updateSnackCodeStatus(int codeNo) {
		return sqlSession.update("memberMapper.updateSnackCodeStatus", codeNo);
	}


	
}
