package com.kh.kass.member.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userPwdQ;
	private String userPwdA;
	private String userName;
	private String userBirth;
	private String userAddr;
	private String userPhone;
	private String userEmail;
	private String userStatus;
	private Date userEnrollDate;
	private Date userModifyDate;
}
