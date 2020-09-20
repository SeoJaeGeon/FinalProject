package com.kh.kass.prodOrder.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kass.payment.model.vo.Payment;
import com.kh.kass.prodOrder.model.dao.ProdOrderDao;
import com.kh.kass.prodOrder.model.vo.ProdOrder;
import com.kh.kass.prodOrder.model.vo.SnackCode;
import com.kh.kass.snack.model.vo.Snack;

@Service("proService")
public class ProdOrderServiceImpl implements ProdOrderService{
	@Autowired
	private ProdOrderDao proDao;

	@Override
	public Snack selectOne(String snackNo) {
		return proDao.selectOne(snackNo);
	}

	@Override
	public int insertPro(Payment pm) {
		return proDao.selectInsertPro(pm);
	}

	@Override
	public Payment selectPro(String to) {
		return proDao.selectPro(to);
	}

	@Override
	public int insertPROD_ORDER(ProdOrder prod) {
		return proDao.insertPROD(prod);
	}

	@Override
	public int selectORDER(int userNo) {
		return proDao.selectORDER(userNo);
	}

	@Override
	public int insertsnackcode(SnackCode pordselect) {
		return proDao.insertSnackCode(pordselect);
	}



}	
