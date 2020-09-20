package com.kh.kass.prodOrder.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.kass.payment.model.vo.Payment;
import com.kh.kass.prodOrder.model.vo.ProdOrder;
import com.kh.kass.prodOrder.model.vo.SnackCode;
import com.kh.kass.snack.model.vo.Snack;

@Repository("proDao")
public class ProdOrderDao {
	@Autowired
	SqlSessionTemplate sqlSession;

	public Snack selectOne(String snackNo) {
		return sqlSession.selectOne("cartMapper.selectOne", snackNo);
	}

	public int insertPay(int snackNo) {
		return sqlSession.insert("cartMapper.insertPay", snackNo);
	}

	public int selectInsertPro(Payment pm) {
		return sqlSession.insert("cartMapper.insertPro",pm);
	}

	public Payment selectPro(String to) {
		return sqlSession.selectOne("cartMapper.selectPro",to);
	}

	public int insertPROD(ProdOrder prod) {
		return sqlSession.insert("cartMapper.insertPROD",prod);
	}

	public int selectORDER(int userNo) {
		System.out.println("userNo : " + userNo);
		return sqlSession.selectOne("cartMapper.selectORDER",userNo);
	}

	public int insertSnackCode(SnackCode pordselect) {
		
		return sqlSession.insert("cartMapper.insertSnackCode", pordselect);
	}
	

}
