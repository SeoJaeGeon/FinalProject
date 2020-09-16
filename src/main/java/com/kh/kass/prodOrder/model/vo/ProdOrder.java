package com.kh.kass.prodOrder.model.vo;

import lombok.Data;

@Data
public class ProdOrder {
	private int orderNo; // 주문이력번호
	private int userId; // 회원아이디
	private int snackNo; // 스낵번호
	private int goodsNo; // 굿즈 번호
	private int movieNo; // 영화 번호
	private int orderCount; //수량
	private int deNo; // 배송번호
	private int payNo; // 결제번호
}
