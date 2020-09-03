package com.kh.kass.common;

import java.sql.Date;

import com.kh.kass.movie.model.vo.Movie;

import lombok.Data;

@Data
public class Attachment {
	private int file_No; // 파일번호
	private String sort_Code; // 구분코드
	private String file_Path; // 파일경로
	private String updoad_Name; // 업로드명
	private String print_Name; // 출력명
	private String file_Status; // 파일존재여부
	private int movie_No; // 영화번호
	private int user_No; // 회원 번호
	private int snack_No; // 상품번호
	private int goods_No; // 굿즈번호
	
	
	public Attachment(int file_No, String sort_Code, String file_Path, String updoad_Name, String print_Name,
			String file_Status, int movie_No, int user_No, int snack_No, int goods_No) {
		super();
		this.file_No = file_No;
		this.sort_Code = sort_Code;
		this.file_Path = file_Path;
		this.updoad_Name = updoad_Name;
		this.print_Name = print_Name;
		this.file_Status = file_Status;
		this.movie_No = movie_No;
		this.user_No = user_No;
		this.snack_No = snack_No;
		this.goods_No = goods_No;
	}
	
	
}
