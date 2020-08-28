package com.kh.kass.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int insertMember(Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	public Member selectMember(Member m) {
		return sqlSession.selectOne("memberMapper.selectMember", m);
	}

	public int checkIdDup(String id) {
		return sqlSession.selectOne("memberMapper.idCheck", id);
	}

	// 아이디 찾기
	public Member selectMemberId(Member m) {
		return sqlSession.selectOne("memberMapper.findId", m);
	}

	// 본인확인
	public String selectPwdQ(Member m) {
		return sqlSession.selectOne("memberMapper.findPwdQ", m);
	}
	
	
}
