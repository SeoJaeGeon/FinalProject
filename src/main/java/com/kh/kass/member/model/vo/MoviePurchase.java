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
public class MoviePurchase {

	private int resNo;
	private int userNo;
	private int urNo;
	private int movieNo;
	private String movieName;
	private Attachment attachment;
	private Date resDate;
	private String startTime;
	private String endTime;
	private String maName;
	private int roomNumber;
	private String urRes;
	private int urPeople;
	private int urPeople2;
	private String reScore;
	
}
