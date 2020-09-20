package com.kh.kass.prodOrder.model.service;

import com.kh.kass.payment.model.vo.Payment;
import com.kh.kass.prodOrder.model.vo.ProdOrder;
import com.kh.kass.prodOrder.model.vo.SnackCode;
import com.kh.kass.snack.model.vo.Snack;

public interface ProdOrderService {

	// 주문하려는 상품 뽑아오기
	Snack selectOne(String snackNo);

	int insertPro(Payment pm);

	Payment selectPro(String to);

	int insertPROD_ORDER(ProdOrder prod);

	int selectORDER(int userNo);

	int insertsnackcode(SnackCode pordselect);

	

}
