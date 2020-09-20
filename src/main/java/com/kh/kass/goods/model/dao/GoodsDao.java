package com.kh.kass.goods.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.PageInfo;
import com.kh.kass.goods.model.vo.Goods;
import com.kh.kass.snack.model.vo.Snack;

@Repository("gDao")
public class GoodsDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int selectListCount() {
		return sqlSession.selectOne("goodsMapper.selectListCount");
	}
	
	public ArrayList<Goods> selectList(PageInfo pi) {
		// 몇 개의 게시글을 건너 뛸 것인지
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("goodsMapper.selectList", null, rowBounds);
	}

	public int insertGoods(Goods g) {
		return sqlSession.insert("goodsMapper.insertGoods", g);
	}

	public int insertGoodsImg(Attachment att) {
		return sqlSession.insert("goodsMapper.insertGoodsImg", att);
	}
	
	public int insertGoodsImg2(Attachment att2) {
		return sqlSession.insert("goodsMapper.insertGoodsImg2", att2);
	}


	public Goods selectGoods(int goodsNo) {
		return sqlSession.selectOne("goodsMapper.selectOne", goodsNo);
	}

	public Attachment selectAtt(int goodsNo) {
		return sqlSession.selectOne("goodsMapper.selectOne", goodsNo);
	}

	public int updateImg(Attachment att) {
		return sqlSession.update("goodsMapper.updateImg", att);
	}

	public int updateGoods(Goods g) {
		return sqlSession.update("goodsMapper.updateGoods", g);
	}



}
