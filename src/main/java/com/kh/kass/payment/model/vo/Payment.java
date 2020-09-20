package com.kh.kass.payment.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Payment {
	private int payNo;
	private int urNo;
	private String orderNum;
	private int payPrice;
	private String paySelect;
	private Date payDate;
	private String refund;
	
	public Payment() {}

	public Payment(int payNo, int urNo, String orderNum, int payPrice, String paySelect, Date payDate, String refund) {
		super();
		this.payNo = payNo;
		this.urNo = urNo;
		this.orderNum = orderNum;
		this.payPrice = payPrice;
		this.paySelect = paySelect;
		this.payDate = payDate;
		this.refund = refund;
	}

	public Payment(int payPrice, String paySelect) {
		super();
		this.payPrice = payPrice;
		this.paySelect = paySelect;
	}
	
	
	
}
