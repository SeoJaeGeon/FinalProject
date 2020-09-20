package com.kh.kass.payment.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import com.kh.kass.common.Attachment;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class SnackPayment {
	private int snackNo; // 스낵 번호
	private String snackName; // 스낵 상품명
	private int snackPrice; // 스낵 가격
	private Payment payment; 
	private int proCount;
	
}
