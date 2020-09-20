package com.kh.kass.prodOrder.model.vo;

import lombok.Data;

@Data
public class SnackCode {
	private int codeNo; // 주문이력번호
	private int orderNo; // 회원아이디
	private int codeTerm; // 스낵번호
	private int codeStatus; // 굿즈 번호
	private int prodCode; // 영화 번호
	
	public SnackCode() {}
}
