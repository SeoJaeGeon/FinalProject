package com.kh.kass.movie.model.vo;

import lombok.Data;

@Data
public class Movie_Genre {
	
	private int genreCode;
	private String genreName;
	
	public Movie_Genre() {}

	public Movie_Genre(int genreCode, String genreName) {
		super();
		this.genreCode = genreCode;
		this.genreName = genreName;
	}
	
	

}
