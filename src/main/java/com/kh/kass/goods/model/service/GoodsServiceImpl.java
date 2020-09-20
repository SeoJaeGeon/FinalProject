package com.kh.kass.goods.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.PageInfo;
import com.kh.kass.goods.model.dao.GoodsDao;
import com.kh.kass.goods.model.vo.Goods;
import com.kh.kass.snack.model.vo.Snack;

@Service("gService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsDao gDao;

	@Override
	public int insertGoods(Goods g) {
		return gDao.insertGoods(g);
	}

	@Override
	public int insertGoodsImg(Attachment att) {
		return gDao.insertGoodsImg(att);
	}

	@Override
	public Goods selectGoods(int goodsNo) {
		return gDao.selectGoods(goodsNo);
	}

	@Override
	public Attachment selectAtt(int goodsNo) {
		return gDao.selectAtt(goodsNo);
	}

	@Override
	public int updateImg(Attachment att) {
		return gDao.updateImg(att);
	}

	@Override
	public int updateGoods(Goods g) {
		return gDao.updateGoods(g);
	}

	@Override
	public int selectListCount() {
		return gDao.selectListCount();
	}

	@Override
	public ArrayList<Goods> selectList(PageInfo pi) {
		return gDao.selectList(pi);
	}

	@Override
	public int insertGoodsImg2(Attachment att2) {
		return gDao.insertGoodsImg2(att2);
	}

	


}
