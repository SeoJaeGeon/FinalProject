package com.kh.kass.movie.model.vo;

import java.util.Date;

import lombok.Data;

@Data
public class Movie_Sales {
	private int maNo;
	private Date payDate;
	
	private int pryPrice;
	
	public Movie_Sales() {}

	public Movie_Sales(int maNo, Date payDate) {
		super();
		this.maNo = maNo;
		this.payDate = payDate;
	}

	public Movie_Sales(int maNo, Date payDate, int pryPrice) {
		super();
		this.maNo = maNo;
		this.payDate = payDate;
		this.pryPrice = pryPrice;
	}

	public Movie_Sales(int pryPrice) {
		super();
		this.pryPrice = pryPrice;
	}
	
	
	
	
}
