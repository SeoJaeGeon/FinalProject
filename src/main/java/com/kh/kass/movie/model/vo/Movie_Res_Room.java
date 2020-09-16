package com.kh.kass.movie.model.vo;

import lombok.Data;

@Data
public class Movie_Res_Room {
	private String resInfo;
	private String roomChair;
	
	public Movie_Res_Room() {}

	public Movie_Res_Room(String resInfo, String roomChair) {
		super();
		this.resInfo = resInfo;
		this.roomChair = roomChair;
	}
	
	
}
