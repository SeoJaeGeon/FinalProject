package com.kh.kass.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.Auth;
import com.kh.kass.member.model.vo.Member;
import com.kh.kass.member.model.vo.Withdrawal;

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

	
}
