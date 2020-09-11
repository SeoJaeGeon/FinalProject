package com.kh.kass.common;

import lombok.Data;

@Data
public class Attachment {


  private int fileNo; // 파일번호
	private String sortCode; // 구분코드
	private String filePath; // 파일경로
	private String originFileName; // 업로드명
	private String renameFileName; // 출력명
	private String fileStatus; // 파일존재여부
	private int movieNo; // 영화번호
	private int userNo; // 회원 번호
	private int snackNo; // 상품번호
	private int goodsNo; // 굿즈번호
	
	public Attachment() {}
	
	public Attachment(String filePath, String originFileName, String renameFileName, int userNo) {
		super();
		this.filePath = filePath;
		this.originFileName = originFileName;
		this.renameFileName = renameFileName;
		this.userNo = userNo;
	}

	public Attachment(int fileNo, String sortCode, String filePath, String originFileName, String renameFileName,
			String fileStatus, int movieNo) {
		super();
		this.fileNo = fileNo;
		this.sortCode = sortCode;
		this.filePath = filePath;
		this.originFileName = originFileName;
		this.renameFileName = renameFileName;
		this.fileStatus = fileStatus;
		this.movieNo = movieNo;
	}

	public Attachment(int fileNo, String sortCode, String filePath, String originFileName, String renameFileName,
			String fileStatus, int movieNo, int userNo, int snackNo, int goodsNo) {
		super();
		this.fileNo = fileNo;
		this.sortCode = sortCode;
		this.filePath = filePath;
		this.originFileName = originFileName;
		this.renameFileName = renameFileName;
		this.fileStatus = fileStatus;
		this.movieNo = movieNo;
		this.userNo = userNo;
		this.snackNo = snackNo;
		this.goodsNo = goodsNo;
	}
	
	
	
	
	
}
