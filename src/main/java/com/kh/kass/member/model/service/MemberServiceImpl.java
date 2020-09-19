package com.kh.kass.member.model.service;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.Auth;
import com.kh.kass.common.PageInfo;
import com.kh.kass.member.model.dao.MemberDao;
import com.kh.kass.member.model.vo.GoodsPurchase;
import com.kh.kass.member.model.vo.Member;
import com.kh.kass.member.model.vo.MoviePurchase;
import com.kh.kass.member.model.vo.MyMovieReview;
import com.kh.kass.member.model.vo.SnackPurchase;
import com.kh.kass.member.model.vo.VodPurchase;
import com.kh.kass.member.model.vo.Withdrawal;
import com.kh.kass.review.model.vo.Review;

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
	public Member loginMember(Member m) {
		Member loginUser = mDao.selectMember(m);

		if(loginUser == null) {
			loginUser = null;
		} else if (!bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
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
		if (!bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) {
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

	@Override
	public int insertAuthNum(Auth au) {
		return mDao.insertAuthNum(au);
	}

	@Override
	public int emailCheck(Auth au) {
		return mDao.emailCheck(au);
	}

	@Override
	public int deleteAuth(Auth au) {
		return mDao.deleteAuth(au);
	}

	// ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	@Override
	public int selectMovieListCount(int userNo) {
		return mDao.selectMovieListCount(userNo);
	}

	@Override
	public ArrayList<MoviePurchase> selectMovieList(int userNo, PageInfo pi) {
		return mDao.selectMovieList(userNo, pi);
	}


	@Override
	public int selectMovieReviewListCount(int userNo) {
		return mDao.selectMovieReviewListCount(userNo);
	}

	@Override
	public ArrayList<MyMovieReview> selectMovieReviewList(int userNo, PageInfo pi) {
		return mDao.selectMovieReviewList(userNo, pi);
	}
	
	@Override
	public int insertMovieReview(Review r) {
		return mDao.insertMovieReview(r);
	}

	@Override
	public int updateMovieReview(Review r) {
		return mDao.updateMovieReview(r);
	}

	@Override
	public int deleteMovieReview(Review r) {
		return mDao.deleteMovieReview(r);
	}

	@Override
	public int selectVodListCount(int userNo) {
		return mDao.selectVodListCount(userNo);
	}

	@Override
	public VodPurchase selectVodPurchaseDetail(VodPurchase vp) {
		return mDao.selectVodPurchaseDetail(vp);
	}

	@Override
	public int insertVodReview(Review r) {
		return  mDao.insertVodReview(r);
	}

	@Override
	public int updateVodReview(Review r) {
		return mDao.updateVodReview(r);
	}

	@Override
	public int deleteVodReview(Review r) {
		return mDao.deleteVodReview(r);
	}

	@Override
	public int selectVodReviewListCount(int userNo) {
		return mDao.selectVodReviewListCount(userNo);
	}

	@Override
	public ArrayList<MyMovieReview> selectVodReviewList(int userNo, PageInfo pi) {
		return mDao.selectVodReviewList(userNo, pi);
	}

	@Override
	public ArrayList<VodPurchase> selectVodList(int userNo, PageInfo pi) {
		return mDao.selectVodList(userNo, pi);
	}

	@Override
	public int selectSnackPurchaseListCount(int userNo) {
		return mDao.selectSnackPurchaseListCount(userNo);
	}
	
	@Override
	public ArrayList<SnackPurchase> selectSnackPurchaseList(int userNo, PageInfo pi) {
		return mDao.selectSnackPurchaseList(userNo, pi);
	}

	@Override
	public ArrayList<SnackPurchase> selectSnackPurchasDetail(SnackPurchase sp) {
		return mDao.selectSnackPurchaseDetail(sp);
	}
	
	@Override
	public ArrayList<SnackPurchase> selectSnackPurchaseDetailCount() {
		return mDao.selectSnackPurchaseDetailCount();
	}
	
	@Override
	public int selectGoodsPurchaseListCount(int userNo) {
		return mDao.selectGoodsPurchaseListCount(userNo);
	}

	@Override
	public ArrayList<GoodsPurchase> selectGoodsPurchaseList(int userNo, PageInfo pi) {
		return mDao.selectGoodsPurchaseList(userNo, pi);
	}
	
	@Override
	public ArrayList<GoodsPurchase> selectGoodsPurchasDetail(GoodsPurchase gp) {
		return mDao.selectGoodsPurchaseDetail(gp);
	}

	@Override
	public ArrayList<GoodsPurchase> selectGoodsPurchaseDetailCount() {
		return mDao.selectGoodsPurchaseDetailCount();
	}
	
	@Override
	public ArrayList<VodPurchase> selectRecommendVod(int userNo) {
		return mDao.selectRecommendVod(userNo);
	}

	@Override
	public int updateSnackCodeStatus(int codeNo) {
		return mDao.updateSnackCodeStatus(codeNo);
	}


}
