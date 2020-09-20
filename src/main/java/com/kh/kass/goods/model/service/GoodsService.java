package com.kh.kass.goods.model.service;

import java.util.ArrayList;

import com.kh.kass.common.Attachment;
import com.kh.kass.common.PageInfo;
import com.kh.kass.goods.model.vo.Goods;
import com.kh.kass.snack.model.vo.Snack;

public interface GoodsService {

	public int insertGoods(Goods g);

	public int insertGoodsImg(Attachment att);

	public ArrayList<Goods> selectGoods(int goodsNo);

	public Attachment selectAtt(int goodsNo);

	public int updateImg(Attachment att);

	public int updateGoods(Goods g);

	public int selectListCount();

	public ArrayList<Goods> selectList(PageInfo pi);

	int insertGoodsImg2(Attachment att2);
	

	

	


}
