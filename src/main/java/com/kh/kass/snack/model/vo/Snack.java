package com.kh.kass.snack.model.vo;

import lombok.Data;

@Data
public class Snack {
	private int sCateNo; // 스낵 카테고리
	private String sCateName; // 스낵 카테고리 명
	private int snackNo; // 스낵 번호
	private String snackName; // 스낵 상품명
	private String snackMemo; // 스낵 상품 설명
	private int snackPrice; // 스낵 가격
	private String snackStatus; // 스낵 삭제 여부
}
