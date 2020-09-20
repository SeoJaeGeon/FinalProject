package com.kh.kass.movie.model.vo;

import java.util.Date;

import lombok.Data;

@Data
public class Movie_Sales {
	private int maNo;
	private Date payDate;
	private int pryPrice;
	private String maName;
	
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

	public Movie_Sales(Date payDate, int pryPrice) {
		super();
		this.payDate = payDate;
		this.pryPrice = pryPrice;
	}

	public Movie_Sales(Date payDate, int pryPrice, String maName) {
		super();
		this.payDate = payDate;
		this.pryPrice = pryPrice;
		this.maName = maName;
	}
	
	
	
	
	
	
	
}
