package com.kh.kass.member.model.vo;

import java.util.Date;
import lombok.Data;

@Data
public class Withdrawal {
	private int wdNo;
	private int userNo;
	private String wdReason;
	private Date wdDate;
	
}
