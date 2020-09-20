package com.kh.kass.member.model.vo;

import java.sql.Date;
import java.util.ArrayList;

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
public class SnackPurchase {
	private int payNo;
	private String orderNum;
	private int payPrice;
	private String paySelect;
	private Date payDate;
	private String refund;
	private int detailCount; // 상세 카운팅
	private ArrayList<ProductOrder> prodOrderList;

}
