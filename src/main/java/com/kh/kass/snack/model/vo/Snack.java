package com.kh.kass.snack.model.vo;

import com.kh.kass.common.Attachment;

import lombok.Data;

@Data
public class Snack {
	private int snackNo; // 스낵 번호
	private String snackName; // 스낵 상품명
	private int snackPrice; // 스낵 가격
	private String snackMemo; // 스낵 상품 설명
	private String snackStatus; // 스낵 삭제 여부
	private int snCateNo; // 스낵 카테고리
	private String sCateName; // 스낵 카테고리 명
	private Attachment attachment;

	
	public Snack() {
	}

	public Snack(int snackNo, String snackName, int snackPrice, String snackMemo, String snackStatus, int snCateNo,
			String sCateName, Attachment attachment) {
		super();
		this.snackNo = snackNo;
		this.snackName = snackName;
		this.snackPrice = snackPrice;
		this.snackMemo = snackMemo;
		this.snackStatus = snackStatus;
		this.snCateNo = snCateNo;
		this.sCateName = sCateName;
		this.attachment = attachment;
	}

	public Snack(int snackNo, String snackName) {
		super();
		this.snackNo = snackNo;
		this.snackName = snackName;
	}
	
	


	

}