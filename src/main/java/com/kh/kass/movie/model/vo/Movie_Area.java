package com.kh.kass.movie.model.vo;

import java.sql.Date;

import com.kh.kass.member.model.vo.Member;
import com.kh.kass.reservation.model.vo.Reservation;

import lombok.Data;

@Data
public class Movie_Area {
	private int maNo;
	private String maName;
	private int mocNo;
	
	public Movie_Area() {}
	
	public Movie_Area(int maNo, String maName, int mocNo) {
		super();
		this.maNo = maNo;
		this.maName = maName;
		this.mocNo = mocNo;
	}
	
	
}
