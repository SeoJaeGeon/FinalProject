package com.kh.kass.member.model.vo;

import java.sql.Date;

import com.kh.kass.common.Attachment;

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
public class VodPurchase {
	private int orderNo;
	private int userNo;
	private int movieNo;
	private int payNo;
	private String movieName;
	private Date payDate;
	private int moviePrice;
	private String reScore;
	private Attachment attachment;
}
