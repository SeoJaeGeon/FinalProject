package com.kh.kass.movie.model.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Movie {
	private int movie_No; // 영화번호
	private String mobie_Name; // 영화이름
	private int movie_Age; // 영화연령
	private int genre_Code; // 장르코드
	private Date Rdate; // 개봉날짜
	private String Rstatus; // 개봉상태
	private int movie_Price; // 영화가격
	private String movie_Link; // 예고편링크
	private String movie_Foreman; // 감독
	private String movie_Producer; // 프로듀서
	private String movie_Actor; // 배우
	private String movie_Stime; // 상영시간
	private String movie_Country; // 국가
	private String movie_Content; // 영화내용
	private String movie_Vod_Status; // vod 구분
}
