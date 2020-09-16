package com.kh.kass.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class ProductOrder {
	private int orderNo; // 주문이력번호
	private int userNo; // 회원 번호
	private int snackNo; // 스낵번호
	private int goodsNo; // 굿즈 번호
	private int movieNo; // 영화 번호
	private int orderCount; // 수량
	private int deNo; // 배송번호
	private int payNo; // 결제번호

	// 굿즈
	// private int gCateNo; // 굿즈 카테고리
	// private String gCateName; // 굿즈 카테고리 명
	private String goodsName; // 굿즈 상품명
	private int goodsPrice; // 굿즈 가격
	//private int goodsStock; // 굿즈 재고
	//private String goodsMemo; // 굿즈 상품 설명
	private String goodsStatus; // 굿즈 존재 여부

	
	//스낵
	private String snackName; // 스낵 상품명
	private int snackPrice; // 스낵 가격
	//private String snackMemo; // 스낵 상품 설명
	private String snackStatus; // 스낵 존재 여부
	//private int sCateNo; // 스낵 카테고리
	//private String sCateName; // 스낵 카테고리 명
	
	private int codeNo;
	private Date codeTerm;
	private String codeStatus;
	private String prodCode;
	
	//private int deNo; // 배송정보 번호
	private String deName; // 수령인
	private String dePhone; // 전화번호
	private String deAddress; // 주소지
	private String deMemo; // 배송 메모
}
