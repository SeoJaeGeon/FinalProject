package com.kh.kass.snack.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.PageInfo;
import com.kh.kass.snack.model.vo.Snack;

@Repository("sDao")
public class SnackDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int selectListCount() {
		return sqlSession.selectOne("snackMapper.selectListCount");
	}

	public ArrayList<Snack> selectList(PageInfo pi) {
		// 몇 개의 게시글을 건너 뛸 것인지
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("snackMapper.selectList", null, rowBounds);
	}

	public int insertSnack(Snack s) {
		return sqlSession.insert("snackMapper.insertSnack", s);
	}

	public int insertSnackImg(Attachment att) {
		return sqlSession.insert("snackMapper.insertSnackImg", att);
	}

	public Snack selectSnack(int snackNo) {
		return sqlSession.selectOne("snackMapper.selectOne", snackNo);
	}

	public Attachment selectAtt(int snackNo) {
		return sqlSession.selectOne("snackMapper.selectAtt", snackNo);
	}

	public int updateSnack(Snack s) {
		return sqlSession.update("snackMapper.updateSnack", s);
	}

	public int deleteSnack(int snackNo) {
		return sqlSession.update("snackMapper.deleteSnack", snackNo);
	}

	public int updateImg(Attachment att) {
		System.out.println("다오 직전 ㅣ : " + att);
		return sqlSession.update("snackMapper.updateImg", att);
	}

	public ArrayList<Snack> deleteSnack(PageInfo pi) {
		// 몇 개의 게시글을 건너 뛸 것인지
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("snackMapper.deleteList", null, rowBounds);
	}

	public ArrayList<Snack> selectpList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("snackMapper.selectpList", null, rowBounds);
	}

	public ArrayList<Snack> selectdList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("snackMapper.selectdList", null, rowBounds);
	}

	public ArrayList<Snack> selectcList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("snackMapper.selectcList", null, rowBounds);
	}
	
	

}
