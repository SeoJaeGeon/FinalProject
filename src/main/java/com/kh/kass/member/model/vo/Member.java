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
	
	public Member() {}

	public Member(int userNo, String userId, String userPwd, String userPwdQ, String userPwdA, String userName,
			String userBirth, String userAddr, String userPhone, String userEmail, String userStatus,
			Date userEnrollDate, Date userModifyDate) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userPwdQ = userPwdQ;
		this.userPwdA = userPwdA;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userAddr = userAddr;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userStatus = userStatus;
		this.userEnrollDate = userEnrollDate;
		this.userModifyDate = userModifyDate;
	}
	
	
}
