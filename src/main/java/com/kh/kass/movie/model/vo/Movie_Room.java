package com.kh.kass.movie.model.vo;

import lombok.Data;

@Data
public class Movie_Room {
	private int roomNo;
	private int roomNumber;
	private String roomChair;
	private int maNo;
	
	public Movie_Room() {}

	public Movie_Room(int roomNo, int roomNumber, String roomChair, int maNo) {
		super();
		this.roomNo = roomNo;
		this.roomNumber = roomNumber;
		this.roomChair = roomChair;
		this.maNo = maNo;
	}

	public Movie_Room(int roomNo) {
		super();
		this.roomNo = roomNo;
	}
	
	
}
