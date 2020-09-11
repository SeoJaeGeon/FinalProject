package com.kh.kass.movie.model.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MovieResListAjax {
	private String movieName;
	private String maName;
	private int roomNo;
	private String startTime;
	private String endTime;
	private Date resDate;
	
	public MovieResListAjax(){}

	public MovieResListAjax(String movieName, String maName, int roomNo, String startTime, String endTime,
			Date resDate) {
		super();
		this.movieName = movieName;
		this.maName = maName;
		this.roomNo = roomNo;
		this.startTime = startTime;
		this.endTime = endTime;
		this.resDate = resDate;
	}
	
	
}
