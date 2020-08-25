package com.kh.kass.movie.model.vo;

import java.sql.Date;
import lombok.Data;

@Data
public class Movie_Res {
	private int res_No; // 영화상영번호
	private int movie_No; // 영화번호
	private Date res_Date; // 상영날짜
	private int room_No; // 상영관번호
	private String res_Info; // 좌성현황
	private String start_Time; // 상영시작 시간
	private String end_Time; // 상영종료 시간
}
