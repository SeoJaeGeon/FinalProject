package com.kh.kass.cart.model.vo;

import lombok.Data;

@Data
public class Cart {
	// cart 추후에 추가
	private int cNo; // 장바구니 번호
	private int userNo; // 유저 번호
	private int cartCount; // 장바구니 수량
	private String cCartYN; // 장바구니 여부
}
