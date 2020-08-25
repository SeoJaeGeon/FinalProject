package com.kh.kass.payment.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Payment {
	private int payNo;
	private int urNo;
	private int orderNo;
	private int payPrice;
	private String paySelect;
	private Date payDate;
	private String refund;
}
