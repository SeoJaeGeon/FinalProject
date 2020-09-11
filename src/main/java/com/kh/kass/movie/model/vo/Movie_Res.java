package com.kh.kass.movie.model.vo;

import java.sql.Date;
import lombok.Data;

@Data
public class Movie_Res {
   private int resNo; // 영화상영번호
   private int movieNo; // 영화번호
   private Date resDate; // 상영날짜
   private int roomNo; // 상영관번호
   private String resInfo; // 좌성현황
   private String startTime; // 상영시작 시간
   private String endTime; // 상영종료 시간

   private String maName; // 영화관지점 이름
   
   	
   
   
    public Movie_Res(){}




	public Movie_Res(int resNo, int movieNo, Date resDate, int roomNo, String resInfo, String startTime, String endTime,
			String maName) {
		super();
		this.resNo = resNo;
		this.movieNo = movieNo;
		this.resDate = resDate;
		this.roomNo = roomNo;
		this.resInfo = resInfo;
		this.startTime = startTime;
		this.endTime = endTime;
		this.maName = maName;
	}





	

	
   
}