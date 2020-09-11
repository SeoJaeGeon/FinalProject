package com.kh.kass.member.model.vo;

import java.util.Date;

import com.kh.kass.common.Attachment;

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
	private Attachment attachment;
	private String authNum;
	
	public Member() {}
	
	// 전체
	public Member(int userNo, String userId, String userPwd, String userPwdQ, String userPwdA, String userName,
			String userBirth, String userAddr, String userPhone, String userEmail, String userStatus,
			Date userEnrollDate, Date userModifyDate, Attachment attachment, String authNum) {
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
		this.attachment = attachment;
		this.authNum = authNum;
	}

	// attachment 제외
	public Member(Integer userNo, String userId, String userPwd, String userPwdQ, String userPwdA, String userName,
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

	// 로그인용
	public Member(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}
	
	
	
}

